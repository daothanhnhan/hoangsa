<?php 
	$home_procats_hoangsa = $action->getList('productcat', 'productcat_parent', '103', 'productcat_id', 'desc', '', '', '');
	$home_procats_vinhxanh = $action->getList('productcat', 'productcat_parent', '104', 'productcat_id', 'desc', '', '', '');
	$home_cho_dem = $action->getList('cho_dem', '', '', 'id', 'asc', '', '', '');
	$home_he_thong = $action->getList('he_thong', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="../plugin/customscrollbar/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
<div id="thucdonhoangsa">
	<section id="examples" class="tabs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Thực Đơn</h2>
					<div class="td_menu_img">
						<span>
							<img src="/images/restaurant_golden_venzel-1.png">
						</span>
					</div>
					<div id="tabs">
						<ul>
							<li><a href="#fragment-1">Nhà Hàng Hoàng Sa</a></li>
							<li><a href="#fragment-2">Nhà Hàng Vịnh Xanh</a></li>
							<li><a href="#fragment-3">Chợ Đêm Hoàng Sa</a></li>
							<li><a href="#fragment-4">Hệ Thống Coffee CCCP</a></li>
						</ul>
						<div class="row">
							<div id="fragment-1">
								<div class="col-md-12">
									<?php 
									foreach ($home_procats_hoangsa as $item_cat) { 
										$rows = $action_product->getProductList_byMultiLevel_orderProductId($item_cat['productcat_id'],'desc',1,12000,'');//var_dump($rows);
										$count = count($rows['data']);
									?>
									<h4><?= $item_cat['productcat_name'] ?></h4>
									<div class="row">
										<?php 
										$d = 0;
										foreach ($rows['data'] as $item) { 
											$d++;
										?>
										<div class="col-md-4 col-sm-6">
											<div class="our-menu-item">
												<a href="javascript:void(0)"><img src="/images/<?= $item['product_img'] ?>"> </a>
												<div class="item-text">
													<h5><?= $item['product_name'] ?></h5>
													<div class="item-price"><span><?= number_format($item['product_price'],0,',','.') ?> VNĐ/Chén</span></div>
												</div>
											</div>
										</div>
										<?php 
											if ($d%3==0) {
												if ($d != $count) {
													echo '</div><br>
													<div class="row">';
												}
											}
										} ?>
									</div>
									<hr>
									<?php } ?>
								</div>
							</div>
							<div id="fragment-2">
								<div class="col-md-12">
									<?php 
									foreach ($home_procats_vinhxanh as $item_cat) { 
										$rows = $action_product->getProductList_byMultiLevel_orderProductId($item_cat['productcat_id'],'desc',1,12000,'');//var_dump($rows);
										$count = count($rows['data']);
									?>
									<h4><?= $item_cat['productcat_name'] ?></h4>
									<div class="row">
										<?php 
										$d = 0;
										foreach ($rows['data'] as $item) { 
											$d++;
										?>
										<div class="col-md-4 col-sm-6">
											<div class="our-menu-item">
												<a href="javascript:void(0)"><img src="/images/<?= $item['product_img'] ?>"> </a>
												<div class="item-text">
													<h5><?= $item['product_name'] ?></h5>
													<div class="item-price"><span><?= number_format($item['product_price'],0,',','.') ?> VNĐ/Chén</span></div>
												</div>
											</div>
										</div>
										<?php 
											if ($d%3==0) {
												if ($d != $count) {
													echo '</div><br>
													<div class="row">';
												}
											}
										} ?>
									</div>
									<hr>
									<?php } ?>
								</div>
							</div>
							<div id="fragment-3">
								<div class="col-md-12">
									<h4>Hoàng Sa ShoppingPlace</h4>
									<div class="row">
										<?php 
										$d = 0;
										$count = count($home_cho_dem);
										foreach ($home_cho_dem as $item) { 
											$d++;
										?>
										<div class="col-md-6">
											<div class="chodem_item">
												<div class="hs_sp_img">
													<img src="/images/<?= $item['image'] ?>" class="img-responsive">
												</div>
												<div class="hs_sp_text">
													<span><?= $item['name'] ?></span>
												</div>
											</div>
										</div>
										<?php 
											if ($d%2==0) {
												if ($d != $count) {
													echo '</div><hr><div class="row">';
												}
											}
										} ?>
									</div>
								</div>
							</div>
							<div id="fragment-4">
								<div class="col-md-12">
									<h4>View</h4>
									<div class="row">
										<?php 
										$d = 0;
										$count = count($home_he_thong);
										foreach ($home_he_thong as $item) { 
											$d++;
										?>
										<div class="col-md-6">
											<div class="chodem_item">
												<div class="hs_sp_img">
													<img src="/images/<?= $item['image'] ?>" class="img-responsive">
												</div>
												<div class="hs_sp_text">
													<span><?= $item['name'] ?></span>
												</div>
											</div>
										</div>
										<?php 
											if ($d%2==0) {
												if ($d != $count) {
													echo '</div><hr><div class="row">';
												}
											}
										} ?>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<!-- custom scrollbar plugin -->
<script src="../plugin/customscrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	window.jQuery || document.write('<script src="../plugin/minified/jquery-1.11.0.min.js"><\/script>')
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script>
	window.jQuery.ui || document.write('<script src="/plugin/minified/jquery-ui-1.10.4.min.js"><\/script>')
</script>
<script>
	(function ($) {
		$(window).on("load", function () {

			$("#tabs").tabs({
				show: {
					effect: "fade",
					duration: 300
				},
				hide: {
					effect: "fade",
					duration: 300
				},
				create: function (e, ui) {
					/* call mCustomScrollbar function on each tab panel upon tabs creation */
					$(".ui-tabs-panel").mCustomScrollbar({
						setHeight: 300,
						theme: "dark-thick"
					});
				}
			});
		});
	})(jQuery);
</script>