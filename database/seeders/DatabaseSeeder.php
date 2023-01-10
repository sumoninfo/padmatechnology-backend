<?php

namespace Database\Seeders;

use App\Models\Amenity;
use App\Models\Product;
use App\Models\Room;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::beginTransaction();
        try {
            Artisan::call('passport:install');
            $this->call(AdminUserSeeder::class);
            $this->call(CustomerUserSeeder::class);

            Room::factory(25)
                ->hasAttached(Amenity::factory()->count(3))
                ->create();

            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
        }
    }
}
