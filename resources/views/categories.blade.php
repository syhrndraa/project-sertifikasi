@extends('layouts.main')
@section('container')
    @foreach ($categories as $category)
    <ul>
        <li>
            <a href="/categories/{{ $category->slug_cat }}">
            <h2>{{ $category->category }}</h2>
            </a>
        </li>
    </ul>
    @endforeach
@endsection