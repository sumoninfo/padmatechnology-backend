<?php

namespace App\Repositories;

use App\Helpers\Helper;
use App\Models\Product;
use App\Repositories\Interfaces\RoomRepositoryInterface;
use App\Models\Room;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class RoomRepository implements RoomRepositoryInterface
{
    /**
     * @param Request $request
     * @return LengthAwarePaginator
     */
    public function all(Request $request): LengthAwarePaginator
    {
        $query = Room::query();
        if ($request->filled('search')) {
            $query->where('name', 'LIKE', "%{$request->search}%");
        }
        if ($request->filled('sort_by')) {
            $query->orderBy('price', $request->sort_by);
        }
        if (!$request->filled('per_page')) {
            $request->request->add(['per_page' => $query->count()]);
        }
        return $query->latest()->paginate($request->get('per_page', config('constant.pagination')));
    }

    /**
     * @param $data
     * @return mixed
     */
    public function store($data)
    {
        if (!empty($data['image'])) {
            $data['image'] = Helper::fileUpload($data['image']);
        }
        $data['uuid'] = Str::uuid()->toString();
        $room         = Room::create($data);
        $room->amenities()->attach(collect($data['amenities'])->pluck('id'));
        return $room;
    }

    /**
     * @param $model
     * @return mixed
     */
    public function find($model)
    {
        return $model;
    }

    /**
     * @param $uuid
     * @return mixed
     */
    public function findByUuid($uuid)
    {
        return Room::where('uuid', $uuid)->first();
    }

    /**
     * @param $model
     * @param $data
     * @return mixed
     */
    public function update($model, $data)
    {
        if (!empty($data['image'])) {
            if (Storage::disk('public')->exists('rooms/' . $model['image'])) {
                Storage::disk('public')->delete('rooms/' . $model['image']);
            }
            $data['image'] = Helper::fileUpload($data['image']);
        } else {
            $data['image'] = $model['image'];
        }
        $model->update($data);
        $model->amenities()->sync(collect($data['amenities'])->pluck('id'));
        return $model;
    }

    public function destroy($model)
    {
        if (Storage::disk('public')->exists('rooms/' . $model->image)) {
            Storage::disk('public')->delete('rooms/' . $model->image);
        }
        $model->amenities()->detach();
        $model->delete();
    }
}
