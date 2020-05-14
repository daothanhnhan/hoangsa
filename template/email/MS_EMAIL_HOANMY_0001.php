<?php 
    $action_email = new action_email();
    $action_email->lien_he1();
?>
<div class="gb-form-lienhe">
    <h3>Thông tin liên hệ</h3>
    <form action="" method="post">
        <div class="form-group">
            <label>Họ và tên</label>
            <input type="text" class="form-control" name="name" placeholder="Họ và tên (*)" required="">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="email" placeholder="Email (*)" required="">
        </div>
        <div class="form-group">
            <label>Điện thoại</label>
            <input type="tel" class="form-control" name="phone" placeholder="Số điện thoại (*)" required="">
        </div>
        <div class="form-group">
            <label>Dịch vụ muốn liên hệ</label>
            
                
                <select class="form-control" name="chondichvu">
                    <option value="Chọn dịch vụ muốn liên hệ">Chọn dịch vụ muốn liên hệ</option>
                    <option value="Nhà hàng Hoàng Sa">Nhà hàng Hoàng Sa</option>
                    <option value="Nhà hàng Hải sản Vịnh Xanh">Nhà hàng Hải sản Vịnh Xanh</option>
                    <option value="Chợ đêm Hoàng Sa">Chợ đêm Hoàng Sa</option>
                    <option value="Hệ thống Cafe CCCP">Hệ thống Cafe CCCP</option>
                </select>
            

        </div>
        <div class="form-group">
            <label>Nội dung</label>
            <textarea class="input-xlarge form-control" id="message" name="note" rows="8"></textarea>
        </div>
        <div class="form-group">
            <button class="vk-btn vk-btn-send" type="submit" name="lien_he">gửi</button>
        </div>
    </form>
</div>