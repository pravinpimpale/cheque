@extends('layouts.app')

@section('content')
    <div class="container-success">
    <div class="card_success">
        <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
            <i class="checkmark i_success">✓</i>
        </div>
        <h1 class="h1_success">Success</h1>
        <p class="p_success">We received your purchase request;<br /> we'll be in touch shortly!</p>
        <br>
        <a href="/"><p><i class="left arrow"></i> Back to Home</p></a>
    </div>
    </div>
@endsection
