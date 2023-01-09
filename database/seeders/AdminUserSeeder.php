<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Create dummy admin user
        Admin::insert([
            [
                'name'       => "Super Admin",
                'email'      => "admin@gmail.com",
                'password'   => Hash::make(12345678), // 12345678
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'name'       => "Main Admin",
                'email'      => "main-admin@gmail.com",
                'password'   => Hash::make(12345678), // 12345678
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'name'       => "Main Admin 2",
                'email'      => "main-admin2@gmail.com",
                'password'   => Hash::make(12345678), // 12345678
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'name'       => "Main Admin 3",
                'email'      => "main-admin3@gmail.com",
                'password'   => Hash::make(12345678), // 12345678
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'name'       => "Main Admin 4",
                'email'      => "main-admin4@gmail.com",
                'password'   => Hash::make(12345678), // 12345678
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ]
        ]);
    }
}
