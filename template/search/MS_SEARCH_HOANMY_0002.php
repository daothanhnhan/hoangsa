<div class="gb-header-between-search">
    <div class="input-group">
        <!-- <div class="input-group-btn search-panel">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <span id="search_concept">Filter by</span> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#contains">Contains</a></li>
                <li><a href="#its_equal">It's equal</a></li>
                <li><a href="#greather_than">Greather than</a></li>
                <li><a href="#less_than">Less than </a></li>
                <li><a href="#all">Anything</a></li>
            </ul>
        </div> -->
        <input type="hidden" name="search_param" value="all" id="search_param">
        <input type="text" class="form-control" name="x" placeholder="Tìm kiếm sản phẩm, danh mục hay thương hiệu mong muốn...">
        <span class="input-group-btn">
                                <button class="btn btn-default btn-tim" type="button">Tìm</button>
                            </span>
    </div>
</div>

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