<?php   
    $action_service = new action_service();
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];                    
        $rowCatLang = $action_service->getServiceCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_service->getServiceCatDetail_byId($rowCatLang['servicecat_id'],$lang);
        $rows = $action_service->getServiceList_byMultiLevel_orderServiceId($rowCat['servicecat_id'],'desc',$trang,8,$slug);       
    }
    else $rows = $action->getList('servicecat','','','servicecat_id','desc',$trang,3,'tin-tuc'); 
    // var_dump($rows);die;
?>
<style type="text/css" media="screen">
.pagination {
	display: inline-block !important;
}
</style>
<div class="container">
	<div class="row">
		<?php 
		$d = 0;
		foreach ($rows['data'] as $item) { 
			$d++;
		?>
		<div class="col-md-6">
			<div>
				<img src="/images/<?= $item['service_img'] ?>" alt="" style="width: 100%;">
				<p><?= $item['service_name'] ?></p>
				<p><?= $item['service_des'] ?></p>
			</div>
		</div>
		<?php 
			if ($d%2==0) {
				echo '<hr style="width:100%;border:0;" />';
			}
		} ?>
	</div>	
	<div style="text-align: center;">
		<?= $rows['paging'] ?>
	</div>
</div>