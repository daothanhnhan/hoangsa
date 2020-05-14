
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-product-home gb-product-tuongtu">
    <!--HEADER PRODUICT TOP-->
    <div class="gb-product-top">
        <div class="gb-divider"></div>
        <h2>SẢN PHẨM CÙNG DANH MỤC</h2>
        <div class="gb-divider"></div>
    </div>
    <!--SHOW PRODUCT ITEM-->
    <div class="gb-product-show">
        <div class="gb-product-sptt-three-item owl-carousel owl-theme">
            <?php
                $action_relative = new action_product();
                $list_pro_relative = $action_relative->getListProductRelate_byIdCat_hasLimit($row['productcat_id'], 3);
                foreach ($list_pro_relative as $item) {
                    $rowLang1 = $action_relative->getProductLangDetail_byId($item['product_id'], $lang);
                    $row1 = $action_relative->getProductDetail_byId($item['product_id'], $lang);
            ?>
                <div class="item">
                    <div class="item_product">
                        <div class="cover_item_product">
                            <span class="border_sp border_top"></span>
                            <span class="border_sp border_left"></span>
                            <span class="border_sp border_bottom"></span>
                            <span class="border_sp border_right"></span>
                            <div class="box_image_product">
                                <a href="/<?= $rowLang1['friendly_url'] ?>">
                                    <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="box_info_product">
                                <a class="link_name_product" href="/<?= $rowLang1['friendly_url'] ?>">
                                    <?= $rowLang1['lang_product_name'] ?>
                                </a>
                                <!--PRICES-->
                                <?php include DIR_PRODUCT."MS_PRODUCT_HOANMY_0002.php";?>
                                <!--Add to cart-->
                                <?php include DIR_CART."MS_CART_HOANMY_0003.php";?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-product-sptt-three-item').owlCarousel({
            loop:true,
            responsiveClass:true,
            nav:false,
            navText:[],
            dots:false,
            margin:30,
            autoplay:true,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:4
                }
            }
        });
    });
</script>