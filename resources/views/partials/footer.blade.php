<script>
    $('title').text('Dinas Kehutanan Jeneponto');
    $('.navbar-nav li:nth-child(1)').addClass('actived');
</script>
<footer>
    <div class="container">
        <div class="col-md-4">
            <h3>Tentang</h3>
            <p style="line-height: 24px; margin-top: 30px;"> Ini adalah website resmi Pemerintah Dearah Kabupaten
                Jeneponto, merupakan wadah pertukaran informasi tentang Kabupaten Jeneponto</p>
        </div>
        <div class="col-md-4">
            <h3>Kantor</h3>
            <ul class="list" style="line-height: 24px; margin-top: 30px;">
                <li class="ellipsis"><span style="display: inline-block;width: 80px;">Alamat</span>: <span>Jl. Lanto Dg. Pasewang No. 34.</span>
                </li>
                <li class="ellipsis"><span style="display: inline-block;width: 80px;">Kode Pos</span>: <span>92351, Jeneponto, Sulawesi Selatan</span>
                </li>
                <li class="ellipsis"><span style="display: inline-block;width: 80px;">Telpon</span>: <a>0419 21012</a>
                </li>
                <li class="ellipsis"><span style="display: inline-block;width: 80px;">Email</span>:
                    <a>humas@jenepontokab.go.id</a></li>
                <li class="ellipsis"><span style="display: inline-block;width: 80px;">Saran</span>: <a
                            href="http://jepot.dev/kontak/">Hubungi kami</a></li>
            </ul>
        </div>
        <div class="col-md-4">
            <img src="{{asset('img/bupati.png')}}" width="90%">
        </div>
    </div>
</footer>

<div class="copyright">
    <div class="container">
        <div class="sosmed pull-right">
            <ul>
                <li><a href="https://www.facebook.com/" target='_blank' class="active"><i
                                class="fa fa-facebook"></i></a></li>
                <li><a href="https://twitter.com/" target='_blank' class="active"><i class="fa fa-twitter"></i></a></li>
                <li><a href="http://jenepontokab.go.id" target='_blank' class="active"><i
                                class="fa fa-external-link"></i></a></li>
            </ul>
        </div>
			<span style="line-height: 38px">
				<div class="ellipsis">© 2014 Dinas Perkebunan Jeneponto - All right reserved. Develop by <a
                            href="http://www.media-sakti.com" style="color: #909090">Media-SAKTI.com</a></div>
			</span>
    </div>
</div>


<!-- Bootstrap -->
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/bootstrap-hover-dropdown.min.js')}}"></script>
<script>$('.dropdown-toggle').dropdownHover(options);</script>

<!-- Media Preview -->
<script src="{{asset('plugin/nivo-lightbox/nivo-lightbox.min.js')}}"></script>
<!-- Validation -->
<script src="{{asset('js/jquery.validate.js')}}"></script>
<script>
    $().ready(function () {
        // validate the comment form when it is submitted
        $(".validate").validate();
    });
</script>
<!-- Input Mask -->
<script src="{{asset('js/jquery.inputmask.bundle.min.js')}}"></script>

<!-- HTML5 Support for IE -->
<script src="{{asset('js/html5shiv.js')}}"></script>
<!-- Scrolling -->
<script src="{{asset('js/scrolltobyspeed.jquery.js')}}"></script>
<script>
    // Go up
    $('.go-up').click(function () {
        $('#top').scrollToBySpeed({
            speed: 5000
        });
    })
</script>
<!-- Owl -->
<script src="{{asset('plugin/owl.carousel/owl.carousel.js')}}"></script>
<style>
    #owl-demo .item {
    }
</style>
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            navigation: false
        });
    });
</script>

