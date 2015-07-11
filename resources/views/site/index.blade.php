@extends('main')
@section('content')
    <div class="container">
        <div class="col-md-8">
            <div style="margin-bottom: 100px;">
                <span class="date-content">08 Januari 2015 </span><br>
                <a href="http://jepot.dev/berita/berita"><h1 class="title-content">Berita</h1></a>
                <div class="img-content" style="background: url('{{asset('img/post/post-1.jpg')}}') no-repeat center; -webkit-background-size: cover;background-size: cover;"></div>
                <p style="line-height: 24px;">
                <p>Berita</p>
                <a href="http://jepot.dev/berita/berita">Selengkapnya</a></p>
            </div>
        </div>
        <div class="col-md-offset-1 col-md-3">
            <span class="tag" style="font-size: 18px">Berita Populer</span>
            <ul class="mp3" style="margin-top: 50px;">
                <li>
                    <div class="title-mp3">
                        <h5><b><a href="http://jepot.dev/berita/testing" style="color: #283a44;">
                                    <div class="ellipsis">Testing</div>
                                </a></b></h5>
                        <span style="color: #b9b9b9">Oleh <a style="color: #283a44;">Rahmat</a></span>
                    </div>
                </li>
                <li>
                    <div class="title-mp3">
                        <h5><b><a href="http://jepot.dev/berita/test-berita" style="color: #283a44;">
                                    <div class="ellipsis">Test Berita</div>
                                </a></b></h5>
                        <span style="color: #b9b9b9">Oleh <a style="color: #283a44;">Rahmat</a></span>
                    </div>
                </li>

                <li>
                    <div class="title-mp3">
                        <h5><b><a href="http://jepot.dev/berita/lorem-ipsum" style="color: #283a44;">
                                    <div class="ellipsis">Lorem Ipsum</div>
                                </a></b></h5>
                        <span style="color: #b9b9b9">Oleh <a style="color: #283a44;">Rahmat</a></span>
                    </div>
                </li>

                <li>
                    <div class="title-mp3">
                        <h5><b><a href="http://jepot.dev/berita/lorem-ipsum-2" style="color: #283a44;">
                                    <div class="ellipsis">Lorem Ipsum 2</div>
                                </a></b></h5>
                        <span style="color: #b9b9b9">Oleh <a style="color: #283a44;">Rahmat</a></span>
                    </div>
                </li>

                <li>
                    <div class="title-mp3">
                        <h5><b><a href="http://jepot.dev/berita/berita" style="color: #283a44;">
                                    <div class="ellipsis">Berita</div>
                                </a></b></h5>
                        <span style="color: #b9b9b9">Oleh <a style="color: #283a44;">Rahmat</a></span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
@endsection
@stop

