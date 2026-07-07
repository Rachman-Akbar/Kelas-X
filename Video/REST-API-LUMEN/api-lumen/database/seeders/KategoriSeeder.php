<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Kategori;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();

        for ($i = 0; $i < 100; $i++) { 
            $data = [
                'kategori' => $faker->city,
                'keterangan' => $faker->text,
            ];
            Kategori::create($data);
        }

    }
}
