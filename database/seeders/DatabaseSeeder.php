<?php

namespace Database\Seeders;

use App\Models\Amenity;
use App\Models\Product;
use App\Models\Room;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Artisan::call('passport:install');
        $this->call(AdminUserSeeder::class);
        $this->call(CustomerUserSeeder::class);

        Room::factory(10)
            ->hasAttached(Amenity::factory()->count(3))
            ->create();
    }
}
