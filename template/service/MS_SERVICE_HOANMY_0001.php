<div class="gb-dichvu_hoanmy">

    <div class="container">

        <div class="gb-dichvu_hoanmy-title">

            <h2>Có gì bên trong bánh mì que Đà Lạt</h2>

            <div class="row">

                <div class="col-md-10 col-md-offset-1">

                    <p>Bánh mì que Đà Lạt là một trong những loại bánh mì hàng đầu Việt Nam, với đa dạng loại nhân khác nhau, với hương vị tuyệt hảo, hấp dẫn, giá cả hợp lý đáp ứng đủ 3 tiêu chí: ngon - bổ - rẻ</p>

                </div>

            </div>

        </div>

        <div class="gb-dichvu_hoanmy-body wow zoomIn"  data-wow-duration="1s">
            <?php include DIR_PRODUCT."MS_PRODUCT_HOANMY_0011.php";?>

            <!-- <div class="row"> -->

                <!-- <?php 
                    $product = new action_product();
                    $list_product_new = $product->getListProductNew_hasLimit(12);
                    $d = 0;
                    foreach ($list_product_new as $item) {
                        $d++;
                        break;
                ?>

                    <div class="col-sm-4">

                        <div class="gb-dichvu_hoanmy-item">

                            <a href="/<?= $item['friendly_url'] ?>">

                                <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">

                                <h2><?= $item['product_name'] ?></h2>
                            </a>
                                <h3>Giá: <?= number_format($item['product_price']) ?> Vnđ</h3>
                                <p><?= $item['product_des'] ?></p>

                        </div>

                    </div>

                <?php 
                if ($d%3==0) {
                    echo '<hr style="width:100%;border:0;" />';
                }
            } ?>
            <?php
                echo $action_page->getPageDetail_byId(57, $lang)['page_content'];
            ?> -->
            <!-- </div> -->

        </div>

    </div>

</div>