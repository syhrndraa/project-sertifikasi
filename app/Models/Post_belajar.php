<?php

namespace App\Models;

use function PHPUnit\Framework\returnSelf;

class Post
{
    private static $blog_posts = [
        [
            'title' => 'Post Pertama',
            'slug' => 'post-pertama',
            'author' => 'Syahrindra',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam eaque voluptates sit accu
            samus odit soluta reprehenderit quis repellendus, nisi itaque ab pariatur nam tempo
            ra voluptate unde repudiandae! Autem ipsum est obcaecati aut fug
            it illum quos debitis laboriosam excepturi beatae! Nam atque iusto minus? Eius, ut.'
        ],
        [
            'title' => 'Post Kedua',
            'slug' => 'post-kedua',
            'author' => 'Dzaky',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam eaque voluptates sit accu
            samus odit soluta reprehenderit quis repellendus, nisi itaque ab pariatur nam tempo
            ra voluptate unde repudiandae! Autem ipsum est obcaecati aut fug
            it illum quos debitis laboriosam excepturi beatae! Nam atque iusto minus? Eius, ut.'
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();

    // halaman single post
        // $post = [];
        // foreach($posts as $p){
        //    if($p['slug'] === $slug){
        //        $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
