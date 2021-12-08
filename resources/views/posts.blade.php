@extends('layouts.main')
@section('container')
    <h1 class="mb-5">{{ $title }}</h1>

@if ($posts->count())
    <div class="card mb-3">
        <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->category }}" class="card-img-top" alt="{{ $posts[0]->category->category }}">
        <div class="card-body text-center">
            <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>
            <p>By.
                <b>
                    <a href="/author/{{ $posts[0]->author->username }}" class="text-decoration-none text-dark">{{ $posts[0]->author->name }}</a>
                </b> in 
                <a href="/categories/{{ $posts[0]->category->slug_cat }}" class="text-decoration-none">{{ $posts[0]->category->category }}</a>
            </p>
            <p class="card-text">
                {{ $posts[0]->excerpt }}
                <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none">Read more...</a>
            </p>
            <p class="card-text"><small class="text-muted">{{ $posts[0]->updated_at->diffForHumans() }}</small></p>
        </div>
    </div>
@else
    <p class="text-center fs-3">No post found.</p>
@endif

<div class="container">
    <div class="row">
        @foreach ($posts->skip(1) as $post)
        <div class="col-md-4 mb-3">
            <div class="card">
                <a href="/categories/{{ $post->category->slug_cat }}" class="text-decoration-none text-white">
                    <div class="position-absolute bg-dark px-3 py-1 text-white">
                        {{ $post->category->category }}
                    </div>
                </a>
                <img src="https://source.unsplash.com/500x350?{{ $post->category->category }}" class="card-img-top" alt="{{ $post->category->category }}">
                <div class="card-body">
                    <h5 class="card-title">{{ $post->title }}</h5>
                    <p>By.
                        <b>
                            <a href="/author/{{ $post->author->username }}" class="text-decoration-none text-dark">{{ $post->author->name }}</a>
                        </b>
                        <small class="text-muted">{{ $post->updated_at->diffForHumans() }}</small>
                    </p>
                    <p class="card-text">
                        {{ $post->excerpt }}
                        <a href="/posts/{{ $post->slug }}" class="text-decoration-none">Read more...</a>
                    </p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection