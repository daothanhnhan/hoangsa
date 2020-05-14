<?php 
    $home_khuyenmai = $action->getList('news', 'newscat_id', '1', 'news_id', 'desc', '', '3', '');//var_dump($home_khuyenmai);
    $home_khuyenmai_cat = $action->getDetail('newscat', 'newscat_id', 1);
?>
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">

<div id="khuyenmaihoangsa" class="gb-gitricotloi_hoanmy">

    <div class="container">

        <div class="gb-gitricotloi_hoanmy-title">

            <h2>Chương trình khuyến mại</h2>

            <div class="uniderline_hoanmy"></div>

        </div>

        <div class="col-md-8">

            <div class="tintuc_page_slide_prew wow slideInUp" data-wow-duration="1s">
                <link rel="stylesheet" href="../plugin/owl-carouse/owl.carousel.min.css">
                <link rel="stylesheet" href="../plugin/owl-carouse/owl.theme.default.min.css">
                <div class="tintuc_slide_ss1 owl-carousel owl-theme">
                    <?php foreach ($home_khuyenmai as $item) { ?>
                    <div class="item">
                        
                        <div class="thumbnail-slide-blog">
                            <img src="/images/<?= $item['news_img'] ?>" class="img-responsive">
                        </div>
                        <div class="all-slide-blog">
                            <div class="blog-xuhuong">
                                <a href="/<?= $item['friendly_url'] ?>">Khuyến mại</a>
                            </div>
                            <div class="title-blog-slide">
                                <a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a>
                            </div>
                            <div class="text-blog-slide ">
                                <p><?= $item['news_des'] ?></p>
                            </div>
                            <div class="read-more-blog">
                                <a href="/<?= $item['friendly_url'] ?>">Chi Tiết</a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <script src="../plugin/owl-carouse/owl.carousel.min.js"></script>
                <script>
                    $(document).ready(function () {
                        $('.tintuc_slide_ss1').owlCarousel({
                            loop: true,
                            navText: [],
                            autoplay: true,
                            dots: true,
                            items: 1
                        });
                    });
                </script>
            </div>

        </div>

        <div id="sidebar" class="col-md-4">
            <div class="sidebar_widget wow slideInUp" data-wow-duration="1.5s">
                <div class="sidebar_widget_title">
                    <h2><a href="/<?= $home_khuyenmai_cat['friendly_url'] ?>" style="color: #fff;">Tin khuyến mại</a></h2>
                </div>
                <ul>
                    <?php foreach ($home_khuyenmai as $item) { ?>
                    <li>
                        <a href="/<?= $item['friendly_url'] ?>">
                            <img src="/images/<?= $item['news_img'] ?>" class="img-responsive">
                            <span><?= $item['news_name'] ?></span>
                            <p class="km_text_box"><?= $item['news_des'] ?></p>
                            <p class="km_lich"><i class="fa fa-calendar-check-o"></i><?= date('d-m-Y', strtotime($item['news_created_date'])) ?></p>
                        </a>
                    </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>



</div>

</div>
<script src="./plugin/waypoint/jquery.waypoints.min.js"></script>
<script src="./plugin/animsition/js/wow.min.js"></script>
<script>
    $(document).ready(function () {
        new WOW().init();
    });
</script>