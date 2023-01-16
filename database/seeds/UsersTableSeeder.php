<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            'role' => "admin",
            'first_name' => 'Super',
            'last_name' => 'Admin',
            'email' => 'admin@cardgenerator.com',
            'mobile' => '1234567890',
            'password' => Hash::make('123456'),
        ]);

        User::insert([
            'role' => "user",
            'first_name' => 'User',
            'last_name' => 'One',
            'email' => 'user@cardgenerator.com',
            'mobile' => '1234567891',
            'password' => Hash::make('123456'),
        ]);
    }
}
