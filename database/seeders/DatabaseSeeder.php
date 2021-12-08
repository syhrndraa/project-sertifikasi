<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();

        // User::create([
        //     'name' => 'Syahrindra Dzaky',
        //     'email' => 'syhrndradr@gmail.com',
        //     'password' => bcrypt('2912')
        // ]);

        // User::create([
        //     'name' => 'Gatau',
        //     'email' => 'gtw@gmail.com',
        //     'password' => bcrypt('2912')
        // ]);
        
        Category::create([
            'category' => 'Article',
            'slug_cat' => 'article',
        ]);

        Category::create([
            'category' => 'Curriculum',
            'slug_cat' => 'curriculum',
        ]);

        Category::create([
            'category' => 'Student Organizations',
            'slug_cat' => 'student-organizations',
        ]);

        Post::factory(20)->create();
        
    }
}
