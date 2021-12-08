@extends('layouts.main')
@section('container')
<h1>Post Category : {{ $title }}</h1>
    @foreach ($posts as $post)
    <article class="mb-5">
        <a href="/posts/{{ $post->slug }}">
        <h2>{{ $post->title }}</h2>
        </a>
        {!! $post->excerpt !!}
    </article>
    @endforeach
    <a href="/posts">Back to Posts</a>
@endsection