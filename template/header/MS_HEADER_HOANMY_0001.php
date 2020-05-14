<link rel="stylesheet" href="plugin/animsition/css/animate.css">
<!--MENU DESTOP-->

<header>

    <!--HEADER between-->

    <div class="gb-header-between">

        <div class="container">

            <div class="row">

                <div class="gb-header-between-logo">

                    <h1><a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
                    </h1>

                </div>

            </div>

        </div>

    </div>

    <div id="myHeader" class="gb-header-menu_hoanmy header">
        <!--MENU MOBILE-->
        <?php include_once DIR_MENU."MS_MENU_HOANMY_0002.php"; ?>
        <!-- End menu mobile-->

        <div class="container">

            <div class="row">

                <div class="col-md-10">

                    <?php include_once DIR_MENU."MS_MENU_HOANMY_0001.php"; ?>

                </div>

                <div class="col-md-2">
                    <div id="ttwmenu" class="multi_language">
                        <ul>
                            <li>
                                <a href="#" title="">
                                    <img src="/images/ptd_vn.jpg" class="ptd_lgue">VN
                                </a>
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)" title="">
                                            <img src="/images/ptd_vn.jpg" class=" ptd_lgue">VN
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" title="">
                                            <img src="/images/ptd_en.jpg" class="ptd_lgue">EN
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>

    </div>
    <script src="./plugin/sticky/jquery.sticky.js"></script>
    <script>
    $(document).ready(function () {
        //-----------------Sticky memu-----------------
        $(".gb-header-menu_hoanmy").sticky({topSpacing:0});

        //-----------------scroll-------------------------------------
        var headerHeight = $('.gb-header-menu_hoanmy').outerHeight();

        $('.slide-section').click(function (e) {
            var linkHref = $(this).attr('href');
            linkHref = linkHref.substring(1);
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
        });
        // ==================================================
        

        // $('.menu-mobile-nav').click(function () {
        //     $('.gb-header-menu_hoanmy').slideToggle();
        // });
    });
</script>

</header>
<script>
    $(document).ready(function(e){
        $('.search-panel .dropdown-menu').find('a').click(function(e) {
            e.preventDefault();
            var param = $(this).attr("href").replace("#","");
            var concept = $(this).text();
            $('.search-panel span#search_concept').text(concept);
            $('.input-group #search_param').val(param);
        });
    });
</script>