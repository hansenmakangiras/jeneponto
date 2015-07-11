<nav class="navbar navbar-default navbar-custom" role="navigation">
	<div class="container">
		<center>
			<a class="" href="{{URL::to('home/')}}"><img src="{{asset('img/logo.png')}}" alt=""></a>
		</center>
	</div>
	<br>
	<hr>
	<div class="">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<center>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<i class="fa fa-bars"></i>&nbsp;&nbsp;Tampilkan menu
				</button>
			</center>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<center>
				<ul class="nav navbar-nav">
					<li class="{{ (Request::is('/') ? 'active' : '') }}">
						<a href="/"><span>Beranda</span></a>
					</li>
					<li class="{{ (Request::is('galeri') ? 'active' : '') }}">
						<a href="{{ URL::to('galeri') }}"><span>Galeri</span></a>
					</li>
					<li class="{{ (Request::is('berita') ? 'active' : '') }}">
						<a href="{{ URL::to('berita') }}"><span>Berita</span></a>
					</li>
					<li class="{{ (Request::is('kontak') ? 'active' : '') }}">
						<a href="{{ URL::to('kontak') }}"><span>Kontak</span></a>
					</li>
				</ul>
			</center>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

	<div id="owl-demo" class="owl-carousel" style="background: #fff">
		<div class="item">
			<div class="slide-item" style="background: url('{{asset('img/kebun/kebun-4.jpg')}}') no-repeat center; background-size: cover">
				<div class="slide-content">
					<a href="single-field.php"><h3><div class="ellipsis">Judul 1</div></h3></a>
					<p><div class="ellipsis"><p>Rerum doloremque, perferendis molestias dicta</p></div></p>
				</div>
				<div class="overlay"></div>
			</div>
		</div>

		<div class="item">
			<div class="slide-item" style="background: url('{{asset('img/kebun/kebun-3.JPG')}}') no-repeat center; background-size: cover">
				<div class="slide-content">
					<a href="single-field.php"><h3><div class="ellipsis">Judul 2</div></h3></a>
					<p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>
				</div>
				<div class="overlay"></div>
			</div>
		</div>

		<div class="item">
			<div class="slide-item" style="background: url('{{asset('img/kebun/kebun-2.jpg')}}') no-repeat center; background-size: cover">
				<div class="slide-content">
					<a href="single-field.php"><h3><div class="ellipsis">Judul 3</div></h3></a>
					<p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>
				</div>
				<div class="overlay"></div>
			</div>
		</div>

		<div class="item">
			<div class="slide-item" style="background: url('{{asset('img/kebun/kebun-4.jpg')}}') no-repeat center; background-size: cover">
				<div class="slide-content">
					<a href="single-field.php"><h3><div class="ellipsis">Judul 4</div></h3></a>
					<p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>
				</div>
				<div class="overlay"></div>
			</div>
		</div>
	</div><br><br>
