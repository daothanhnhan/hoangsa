<link rel="stylesheet" href="/plugin/fonts/themify/themify-icons.css">

<footer class="site-footer_seafood footer-default_seafood">

    <div class="footer-main-content_seafood">

        <div class="container">

            <div class="row">

                <div class="col-md-6">

                    <div class="footer-main-content_seafood-element">

                        <aside class="widget-footer">

                            <!-- <h3 class="widget-title-footer-seafood">Giới Thiệu</h3> -->

                            <div class="widget-content">

                                <div class="footer-about-seafood">

                                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt=""
                                            class="img-responsive"></a>

                                    <p>
                                        <i class="fa fa-map-marker"></i>
                                        <span>Nhà hàng Hoàng Sa: <em><?= $rowConfig['content_home1'] ?></em></span>
                                    </p>
                                    <p>
                                        <i class="fa fa-map-marker"></i>
                                        <span>Chợ đêm Hoàng Sa: <em><?= $rowConfig['content_home4'] ?></em></span>
                                    </p>
                                    <p>
                                        <i class="fa fa-map-marker"></i>
                                        <span>Hải sản Vịnh Xanh: <em><?= $rowConfig['content_home7'] ?></em></span>
                                    </p>
                                    <p><i class="fa fa-map-marker"></i><span>Coffee CCCP: <em><?= $rowConfig['content_home8'] ?></em></span></p>
                                    <p><i class="fa fa-phone"></i>
                                        <span>
                                            Hotline: <em><?= $rowConfig['content_home3'] ?></em>
                                        </span></p>
                                    <p>
                                        <i class="fa fa-envelope"></i><span>Email:
                                            <em><?= $rowConfig['content_home2'] ?></em></span>
                                    </p>
                                    <p>
                                        <i class="fa fa-facebook"></i>
                                        <span>Fanpage: <em><a href="<?= $rowConfig['facebook'] ?>"
                                                    title=""><?= $rowConfig['facebook'] ?></a></em></span>
                                    </p>
                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-3">
                    <div class="footer-main-content_seafood-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-seafood">Tìm chúng tôi trên</h3>
                            <?php include DIR_SOCIAL."MS_SOCIAL_HOANMY_0001.php";?>
                            <div class="thongbao_bct">
                                <h3>Chứng nhận</h3>
                                <img src="/images/congthuong.png" class="img-responsive">
                            </div>

                        </aside>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <div class="footer-main-content_seafood-fb">
                            <h3 class="widget-title-footer-seafood">Fanpage</h3>
                            <div class="seafood_fb">
                                <iframe
                                    src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhoangsanhatrang.vn&tabs=timeline&width=400&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
                                    width="100%" height="220" style="border:none;overflow:hidden" scrolling="no"
                                    frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="footer-main-content_seafood-element">

                            <aside class="widget-footer">

                                <h3 class="widget-title-footer-seafood">Lượt truy cập</h3>

                                <div class="widget-content">
                                    <!-- Histats.com  (div with counter) -->
                                    <div id="histats_counter"></div>
                                    <!-- Histats.com  START  (aync)-->
                                    <script type="text/javascript">
                                        var _Hasync = _Hasync || [];
                                        _Hasync.push(['Histats.start', '1,4315049,4,408,270,55,00011111']);
                                        _Hasync.push(['Histats.fasi', '1']);
                                        _Hasync.push(['Histats.track_hits', '']);
                                        (function () {
                                            var hs = document.createElement('script');
                                            hs.type = 'text/javascript';
                                            hs.async = true;
                                            hs.src = ('//s10.histats.com/js15_as.js');
                                            (document.getElementsByTagName('head')[0] || document
                                                .getElementsByTagName('body')[0]).appendChild(hs);
                                        })();
                                    </script>
                                    <noscript><a href="/" target="_blank"><img
                                                src="//sstatic1.histats.com/0.gif?4315049&101" alt=""
                                                border="0"></a></noscript>
                                    <!-- Histats.com  END  -->
                                </div>

                            </aside>

                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="copyright-area_seafood" style="background-color: #000;">

        <div class="container">

            <div class="copyright-content_seafood">

                <p class="copyright-text_seafood">© Copyright 2017. All rights reserved. Design by Hoàng Sa - AMC
                    Co..Ltd</p>

            </div>

        </div>

    </div>

</footer>