<?php

namespace App\Repositories;

use App\Repositories\Interfaces\AmenityRepositoryInterface;
use App\Models\Amenity;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Http\Request;

class AmenityRepository implements AmenityRepositoryInterface
{
    /**
     * @param Request $request
     * @return LengthAwarePaginator
     */
    public function all(Request $request): LengthAwarePaginator
    {
        $query = Amenity::query();
        if ($request->filled('search')) {
            $query->where('name', 'LIKE', "%{$request->search}%");
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
        return Amenity::create($data);
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
     * @param $model
     * @param $data
     * @return mixed
     */
    public function update($model, $data)
    {
        return $model->update($data);
    }

    /**
     * @param $model
     * @return void
     */
    public function destroy($model)
    {
        $model->delete();
    }
}
