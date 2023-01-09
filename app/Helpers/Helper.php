<?php
// Code within app\Helpers\Helper.php

namespace App\Helpers;

use Carbon\Carbon;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class Helper
{
    /**
     * return auth user
     *
     * @return Authenticatable|null
     */
    public static function getAuth(): ?Authenticatable
    {
        return Auth::user();
    }

    /**
     * return response api
     */
    public static function returnResponse($status = "success", $message = "Successfully", $data = null, $status_code = 200): \Illuminate\Http\JsonResponse
    {
        return response()->json(['status' => $status, 'message' => $message, 'data' => $data], $status_code);
    }

    /**
     * file upload
     *
     * @param $file
     * @param string $path
     * @return string
     */
    public static function fileUpload($file, string $path = 'rooms/'): string
    {
        $image_parts    = explode(";base64,", $file);
        $file           = base64_decode($image_parts[1]);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type     = $image_type_aux[1];
        $file_name      = 'image-' . time() . '.' . $image_type;
        if (!Storage::disk('public')->put($path . $file_name, $file)) {
            $file_name = '';
        }
        return $file_name;
    }


    /**
     * generate booking no
     *
     * @param $booking_id
     * @return string
     */
    public static function generateBookingNo($booking_id): string
    {
        return 'B-' . Carbon::now()->format('ymd') . '-' . sprintf("%03d", $booking_id);
    }
}
