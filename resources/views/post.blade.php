@extends('layouts.main')
@section('container')
    <div class="container">
        <div class="row justify-content-center" mb-5>
            <div class="col-md-8">
                <h2 class="mb-3">{{ $post->title }}</h2>
                <p>By. 
                    <b>
                        <a href="/author/{{ $post->author->username }}" class="text-decoration-none text-dark">
                            {{ $post->author->name }}
                        </a>
                    </b>
                     in 
                    <a href="/categories/{{ $post->category->slug_cat }}" class="text-decoration-none">
                        {{ $post->category->category }}
                    </a>
                </p>
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->category }}" class="card-img-top" alt="{{ $post->category->category }}">
                <article class="my-4 fs-5">
                    {!! $post->body !!}
                </article>
                <a href="/posts" class="d-block text-decoration-none mt-5">Back to Posts</a>
            </div>
        </div>
    </div>
@endsection