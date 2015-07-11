@include('layouts.header')

@section('navigation')
<nav class="navbar navbar-default navbar-custom" role="navigation">
    <div class="container">
      <center>
        <a class="" href="http://jepot.dev/"><img src="/img/logo.png" alt=""></a>
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
          @foreach($menu as $key => $menus)
            <li><a href="{{ url() }}/{{ $menus['link_menu'] }}"><span>{{ $menus['nama_menu'] }}</span></a></li>
          @endforeach
          </ul>
        </center>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
    <div id="owl-demo" class="owl-carousel" style="background: #fff">

    
      <div class="item">
        
        <div class="slide-item" style="background: url(http://jepot.dev/images/data/kebun-4.jpg) no-repeat center; background-size: cover">

          <div class="slide-content">
          
            <a href="single-field.php"><h3><div class="ellipsis">Judul 1</div></h3></a>

            <p><div class="ellipsis"><p>Rerum doloremque, perferendis molestias dicta</p></div></p>

          </div>

          <div class="overlay"></div>

        </div>

      </div>

    
      <div class="item">
        
        <div class="slide-item" style="background: url(http://jepot.dev/images/data/kebun-3.JPG) no-repeat center; background-size: cover">

          <div class="slide-content">
          
            <a href="single-field.php"><h3><div class="ellipsis">Judul 2</div></h3></a>

            <p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>

          </div>

          <div class="overlay"></div>

        </div>

      </div>

    
      <div class="item">
        
        <div class="slide-item" style="background: url(http://jepot.dev/images/data/kebun-2.jpg) no-repeat center; background-size: cover">

          <div class="slide-content">
          
            <a href="single-field.php"><h3><div class="ellipsis">Judul 3</div></h3></a>

            <p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>

          </div>

          <div class="overlay"></div>

        </div>

      </div>

    
      <div class="item">
        
        <div class="slide-item" style="background: url(http://jepot.dev/images/data/kebun-1.jpg) no-repeat center; background-size: cover">

          <div class="slide-content">
          
            <a href="single-field.php"><h3><div class="ellipsis">Judul 4</div></h3></a>

            <p><div class="ellipsis"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div></p>

          </div>

          <div class="overlay"></div>

        </div>

      </div>

    
  </div>

  <br>
  <br>
  
@show

@yield('content')

@include('layouts.footer')