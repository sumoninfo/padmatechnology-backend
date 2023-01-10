<?php

namespace App\Http\Controllers;

use App\Http\Resources\Admin\ProductResource;
use App\Http\Resources\Admin\RoomResource;
use App\Models\Product;
use App\Models\Room;
use App\Repositories\RoomRepository;
use App\Services\ProductService;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class FrontendController extends Controller
{
    /**
     * @param Request $request
     * @param RoomRepository $repository
     * @return AnonymousResourceCollection
     */

    public function getRooms(Request $request, RoomRepository $repository): AnonymousResourceCollection
    {
        return RoomResource::collection($repository->all($request));
    }

    /**
     * @param $uuid
     * @param RoomRepository $repository
     * @return RoomResource
     */
    public function getRoom($uuid, RoomRepository $repository): RoomResource
    {
        $room = $repository->findByUuid($uuid);
        return new RoomResource($repository->find($room));
    }

}
