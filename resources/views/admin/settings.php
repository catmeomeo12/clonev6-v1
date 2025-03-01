<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Settings',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '
<!-- Bootstrap Color Picker -->
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<!-- CodeMirror -->
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/codemirror.css">
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/theme/monokai.css">
<!-- ckeditor -->
<script src="'.BASE_URL('public/ckeditor/ckeditor.js').'"></script>
<!-- Select2 -->
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
';
$body['footer'] = '
<!-- bootstrap color picker -->
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- CodeMirror -->
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/codemirror.js"></script>
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/mode/css/css.js"></script>
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/mode/xml/xml.js"></script>
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/codemirror/mode/htmlmixed/htmlmixed.js"></script>
<!-- Select2 -->
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/select2/js/select2.full.min.js"></script>
<script>
$(function () {
    $(".select2").select2()
    $(".select2bs4").select2({
        theme: "bootstrap4"
    });
});
</script>
';
require_once(__DIR__.'/../../../models/is_admin.php');
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
require_once(__DIR__.'/nav.php');
require_once(__DIR__.'/../../../models/is_license.php');
?>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Settings</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?=BASE_URL('views/admin/index.php');?>">Dashboard</a></li>
                        <li class="breadcrumb-item active">Settings</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <?php
    if (isset($_POST['SaveSettings'])) {
        if ($CMSNT->site('status_demo') != 0) {
            die('<script type="text/javascript">if(!alert("Không được dùng chức năng này vì đây là trang web demo.")){window.history.back().location.reload();}</script>');
        }
        foreach ($_POST as $key => $value) {
            $CMSNT->update("settings", array(
                'value' => $value
            ), " `name` = '$key' ");
        }
        die('<script type="text/javascript">if(!alert("Lưu thành công !")){window.history.back().location.reload();}</script>');
    } ?>
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-12">
                    <div class="card card-dark card-tabs">
                        <div class="card-header p-0 pt-1 border-bottom-0">
                            <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill"
                                        href="#custom-tabs-three-home" role="tab" aria-controls="custom-tabs-three-home"
                                        aria-selected="true">THÔNG TIN CHUNG</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="google-reCAPTCHA-tab" data-toggle="pill" href="#google-reCAPTCHA"
                                        role="tab" aria-controls="google-reCAPTCHA" aria-selected="false">Google reCAPTCHA</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="bot-telegram-tab" data-toggle="pill" href="#bot-telegram"
                                        role="tab" aria-controls="bot-telegram" aria-selected="false">BOT TELEGRAM</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab10" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">HIỂN THỊ SẢN PHẨM</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab11" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">GIAO DỊCH ẢO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#custom-tabs-three-profile" role="tab"
                                        aria-controls="custom-tabs-three-profile" aria-selected="false">NGÂN HÀNG VN
                                        AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab3" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">MOMO AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab4" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">ZALO PAY AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab5" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">THESIEURE AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab6" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">PAYPAL AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab7" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">NẠP THẺ AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab8" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">PERFECT MONEY AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#tab9" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">CRYPTO AUTO</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#toyyibpay" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">TOYYIBPAY Malaysia Bank Recharge</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#flutterwave" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">Flutterwave Nigeria Recharge</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                        href="#squadco" role="tab" aria-controls="custom-tabs-three-profile"
                                        aria-selected="false">Squadco Nigeria Recharge</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="custom-tabs-three-tabContent">
                                <div class="tab-pane fade show active" id="custom-tabs-three-home" role="tabpanel"
                                    aria-labelledby="custom-tabs-three-home-tab">
                                    <form action="" method="POST">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Title Sidebar</label>
                                                    <input type="text" class="form-control" name="menu_title"
                                                        value="<?=$CMSNT->site('menu_title');?>"
                                                        placeholder="VD: Dichvuprize.com">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Title (tiêu đề khi share lên mạng xã
                                                        hội)</label>
                                                    <input type="text" class="form-control" name="title"
                                                        value="<?=$CMSNT->site('title');?>" placeholder="VD: Nguyễn Hoàng Phúc">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Description</label>
                                                    <input type="text" class="form-control" name="description"
                                                        value="<?=$CMSNT->site('description');?>"
                                                        placeholder="VD: Hệ thống bán mã nguồn website MMO uy tín">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Keywords</label>
                                                    <input type="text" class="form-control" name="keywords"
                                                        value="<?=$CMSNT->site('keywords');?>"
                                                        placeholder="VD: Nguyễn Hoàng Phúc, bán code, source code mmo">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Author</label>
                                                    <input type="text" class="form-control" name="author"
                                                        value="<?=$CMSNT->site('author');?>" placeholder="VD: Nguyễn Hoàng Phúc">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Màu chủ đạo website:</label>
                                                    <div class="input-group my-colorpicker2">
                                                        <input type="text" name="theme_color"
                                                            value="<?=$CMSNT->site('theme_color');?>"
                                                            class="form-control">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i
                                                                    class="fas fa-square"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Màu phụ website:</label>
                                                    <div class="input-group my-colorpicker1">
                                                        <input type="text" name="theme_color2"
                                                            value="<?=$CMSNT->site('theme_color2');?>"
                                                            class="form-control">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i
                                                                    class="fas fa-square"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Status</label>
                                                    <select class="form-control select2bs4" name="status">
                                                        <option <?=$CMSNT->site('status') == 1 ? 'selected' : '';?>
                                                            value="1">ON
                                                        </option>
                                                        <option <?=$CMSNT->site('status') == 0 ? 'selected' : '';?>
                                                            value="0">
                                                            OFF
                                                        </option>
                                                    </select>
                                                    <i>Chọn OFF website sẽ bật chế độ bảo trì, ADMIN truy cập bình
                                                        thường.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Status Update</label>
                                                    <select class="form-control select2bs4" name="status_update">
                                                        <option
                                                            <?=$CMSNT->site('status_update') == 1 ? 'selected' : '';?>
                                                            value="1">ON
                                                        </option>
                                                        <option
                                                            <?=$CMSNT->site('status_update') == 0 ? 'selected' : '';?>
                                                            value="0">
                                                            OFF
                                                        </option>
                                                    </select>
                                                    <i>Chọn OFF website sẽ tắt chế độ cập nhật phiên bản tự động</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Status Captcha</label>
                                                    <select class="form-control select2bs4" name="status_captcha">
                                                        <option
                                                            <?=$CMSNT->site('status_captcha') == 1 ? 'selected' : '';?>
                                                            value="1">ON
                                                        </option>
                                                        <option
                                                            <?=$CMSNT->site('status_captcha') == 0 ? 'selected' : '';?>
                                                            value="0">
                                                            OFF
                                                        </option>
                                                    </select>
                                                    <i>Chọn OFF website sẽ tắt Captcha chống SPAM</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Hotline</label>
                                                    <input type="text" class="form-control" name="hotline"
                                                        value="<?=$CMSNT->site('hotline');?>"
                                                        placeholder="Số điện thoại liên hệ vn: 0814005773">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email</label>
                                                    <input type="email" class="form-control" name="email"
                                                        value="<?=$CMSNT->site('email');?>" placeholder="Email liên hệ vd: nguyenphuc0681@gmail.com">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email SMTP</label>
                                                    <input type="email" class="form-control" name="email_smtp"
                                                        value="<?=$CMSNT->site('email_smtp');?>"
                                                        placeholder="Nhập địa chỉ Email SMTP">
                                                    <i>Hướng dẫn cấu hình SMTP <a target="_blank"
                                                            href="https://www.cmsnt.co/2022/12/huong-dan-cach-cau-hinh-smtp-e-gui.html">tại
                                                            đây</a></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Password Email SMTP</label>
                                                    <input type="text" class="form-control" name="pass_email_smtp"
                                                        value="<?=$CMSNT->site('pass_email_smtp');?>"
                                                        placeholder="Nhập mật khẩu Email">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giá trị đơn hàng tối thiểu để dùng
                                                        đánh
                                                        giá</label>
                                                    <input type="number" class="form-control" name="min_rating"
                                                        value="<?=$CMSNT->site('min_rating');?>"
                                                        placeholder="Nhập giá trị đơn hàng tối thiểu để dùng đánh giá">
                                                    <i>Đơn hàng phải lớn hơn hoặc bằng
                                                        <?=format_currency($CMSNT->site('min_rating'));?> mới có thể sử
                                                        dụng
                                                        tính năng đánh giá và phản hồi.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Thời gian lưu phiên đăng
                                                        nhập</label>
                                                    <input type="number" class="form-control" name="session_login"
                                                        value="<?=$CMSNT->site('session_login');?>"
                                                        placeholder="Nhập thời gian lưu phiên đăng nhập">
                                                    <i>Tính bằng giây (<?=$CMSNT->site('session_login');?> =
                                                        <?=timeAgo2($CMSNT->site('session_login'));?>)</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Số tiền nạp tối thiểu</label>
                                                    <input type="number" class="form-control" name="min_recharge"
                                                        value="<?=$CMSNT->site('min_recharge');?>"
                                                        placeholder="VD 10000">
                                                    <i>Số tiền nạp tối thiểu để được tạo hoá đơn nạp tiền.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Thời gian check live mỗi
                                                        nick</label>
                                                    <input type="number" class="form-control" name="time_check_live"
                                                        value="<?=$CMSNT->site('time_check_live');?>"
                                                        placeholder="VD 1800">
                                                    <i>VD <?=$CMSNT->site('time_check_live');?> tức mỗi
                                                        <?=timeAgo2($CMSNT->site('time_check_live'));?> hệ thống mới
                                                        check live
                                                        lại nick đó, số càng cao thì tỉ lệ check live sót càng thấp, nên
                                                        để 1800
                                                        giây (30 phút)</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Tiền tệ</label>
                                                    <select class="form-control select2bs4" name="currency">
                                                        <option
                                                            <?=$CMSNT->site('currency') == 'VND' ? 'selected' : '';?>
                                                            value="VND"><?=__('VNĐ');?></option>
                                                        <option
                                                            <?=$CMSNT->site('currency') == 'USD' ? 'selected' : '';?>
                                                            value="USD"><?=__('USD');?></option>
                                                        <option
                                                            <?=$CMSNT->site('currency') == 'RMB' ? 'selected' : '';?>
                                                            value="RMB"><?=__('RMB');?></option>
                                                        <option
                                                            <?=$CMSNT->site('currency') == 'THB' ? 'selected' : '';?>
                                                            value="THB"><?=__('THB');?></option>
                                                    </select>
                                                    <i>Vui lòng cấu hình <a
                                                            href="<?=base_url_admin('currency-list');?>">tại
                                                            đây</a>.</i>
                                                </div>

                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Tỉ giá USD</label>
                                                    <input type="number" class="form-control" name="usd_rate"
                                                        value="<?=$CMSNT->site('usd_rate');?>">
                                                    <i>Hệ thống sẽ quy đổi 1 USD thành
                                                        <?=format_currency($CMSNT->site('usd_rate'));?>.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Thời gian hết hạn hoá đơn</label>
                                                    <input type="number" class="form-control" name="invoice_expiration"
                                                        value="<?=$CMSNT->site('invoice_expiration');?>"
                                                        placeholder="VD 86400">
                                                    <i>VD <?=$CMSNT->site('invoice_expiration');?> tức hoá đơn nạp tiền
                                                        sẽ tồn
                                                        tại trong
                                                        <?=timeAgo2($CMSNT->site('invoice_expiration'));?>.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiệu ứng nhấp chuột</label>
                                                    <select class="form-control select2bs4" name="mouse_click_effect">
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 0 ? 'selected' : '';?>
                                                            value="0">Tắt hiệu ứng</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 1 ? 'selected' : '';?>
                                                            value="1">Hiệu ứng 1</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 2 ? 'selected' : '';?>
                                                            value="2">Hiệu ứng 2</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 3 ? 'selected' : '';?>
                                                            value="3">Hiệu ứng 3</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 4 ? 'selected' : '';?>
                                                            value="4">Hiệu ứng 4</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 5 ? 'selected' : '';?>
                                                            value="5">Hiệu ứng 5</option>
                                                        <option
                                                            <?=$CMSNT->site('mouse_click_effect') == 6 ? 'selected' : '';?>
                                                            value="6">Hiệu ứng 6</option>
                                                    </select>
                                                    <i>Hiệu ứng khi nhấp chuột trong trang khách.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Vòng quay SPIN</label>
                                                    <select class="form-control select2bs4" name="status_spin">
                                                        <option <?=$CMSNT->site('status_spin') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option <?=$CMSNT->site('status_spin') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Hệ thống sẽ tắt tính năng vòng quay khi bạn chọn Off.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giá trị đơn hàng nhận SPIN</label>
                                                    <input type="number" class="form-control" name="condition_spin"
                                                        value="<?=$CMSNT->site('condition_spin');?>">
                                                    <i>Đơn hàng có giá trị lớn hơn hoặc bằng
                                                        <?=format_currency($CMSNT->site('condition_spin'));?> sẽ nhận
                                                        được 1
                                                        lượt quay (SPIN).</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Hiển Thị Giao Dịch Gần Đây</label>
                                                    <select class="form-control select2bs4"
                                                        name="status_giao_dich_gan_day">
                                                        <option
                                                            <?=$CMSNT->site('status_giao_dich_gan_day') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_giao_dich_gan_day') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Giao dịch mua tài khoản gần đây được hiển thị tại trang home.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Login Trước Khi Xem Sản Phẩm</label>
                                                    <select class="form-control select2bs4" name="sign_view_product">
                                                        <option
                                                            <?=$CMSNT->site('sign_view_product') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('sign_view_product') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Nếu bạn chọn ON, khách sẽ phải đăng nhập vào mới có thể xem được
                                                        sản phẩm bạn đang bán.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Font Family</label>
                                                    <input type="text" class="form-control" name="font_family"
                                                        value="<?=$CMSNT->site('font_family');?>">
                                                    <i><a type="button" data-toggle="modal"
                                                            data-target="#modal-hd-font-family" href="#">Hướng dẫn</a>
                                                        thay font website</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Thời Gian Xoá Đơn Hàng</label>
                                                    <input type="number" class="form-control" name="time_delete_orders"
                                                        value="<?=$CMSNT->site('time_delete_orders');?>">
                                                    <i>Hệ thống thực hiện xoá đơn hàng đã mua sau khi đủ thời gian bạn
                                                        điều chỉnh, thời gian tính bằng giây 1 = 1 giây, SET thành 0 để
                                                        tắt chức năng này.</i>
                                                </div>
                                            </div>
                                            <?php if(checkAddon(4) == false):?>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Top nạp tiền</label>
                                                    <select class="form-control select2bs4" name="stt_topnap">
                                                        <option <?=$CMSNT->site('stt_topnap') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển thị</option>
                                                        <option <?=$CMSNT->site('stt_topnap') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <?php endif?>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Duyệt thành viên khi đăng ký</label>
                                                    <select class="form-control select2bs4" name="status_active_member">
                                                        <option
                                                            <?=$CMSNT->site('status_active_member') == 1 ? 'selected' : '';?>
                                                            value="1">Bật</option>
                                                        <option
                                                            <?=$CMSNT->site('status_active_member') == 0 ? 'selected' : '';?>
                                                            value="0">Tắt</option>
                                                    </select>
                                                    <i>Nếu chọn ON, các thành viên khi đăng ký sẽ phải cần BQT duyệt mới
                                                        có thể sử dụng.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giới hạn thời gian mua mỗi
                                                        lượt</label>
                                                    <input type="number" class="form-control" placeholder="VD: 10"
                                                        name="max_time_buy" value="<?=$CMSNT->site('max_time_buy');?>">
                                                    <i>Ví dụ nhập vào số <?=$CMSNT->site('max_time_buy');?>: tức sau khi
                                                        mua hàng, user đó phải đợi
                                                        <?=timeAgo2($CMSNT->site('max_time_buy'));?> mới có thể thực
                                                        hiện tiếp giao dịch mua</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Thời gian xoá clone DIE tính theo
                                                        giây</label>
                                                    <input type="number" class="form-control"
                                                        placeholder="VD: 2592000 = 30 ngày" name="time_delete_clone_die"
                                                        value="<?=$CMSNT->site('time_delete_clone_die');?>">
                                                    <i>Ví dụ nhập <?=$CMSNT->site('time_delete_clone_die');?>: tức hệ
                                                        thống sẽ tự động xoá các tài khoản DIE nằm trên hệ thống
                                                        <?=timeAgo2($CMSNT->site('time_delete_clone_die'));?>, để 0 để
                                                        tắt chức năng này</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Document API</label>
                                                    <select class="form-control select2bs4" name="display_api">
                                                        <option <?=$CMSNT->site('display_api') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển thị</option>
                                                        <option <?=$CMSNT->site('display_api') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Menu Liên Hệ</label>
                                                    <select class="form-control select2bs4" name="display_contact">
                                                        <option
                                                            <?=$CMSNT->site('display_contact') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển thị</option>
                                                        <option
                                                            <?=$CMSNT->site('display_contact') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Menu Công Cụ</label>
                                                    <select class="form-control select2bs4" name="display_tool">
                                                        <option
                                                            <?=$CMSNT->site('display_tool') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển thị</option>
                                                        <option
                                                            <?=$CMSNT->site('display_tool') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Change password định kỳ</label>
                                                    <select class="form-control select2bs4"
                                                        name="status_is_change_password">
                                                        <option
                                                            <?=$CMSNT->site('status_is_change_password') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_is_change_password') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Timezone</label>
                                                    <input type="text" class="form-control" name="timezone"
                                                        value="<?=$CMSNT->site('timezone');?>"
                                                        placeholder="VD: Asia/Ho_Chi_Minh">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Cộng tiền cho người bán</label>
                                                    <select class="form-control select2bs4" name="status_addfun_seller">
                                                        <option
                                                            <?=$CMSNT->site('status_addfun_seller') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_addfun_seller') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Nếu OFF, hệ thống sẽ tắt chức năng cộng tiền cho người bán.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Menu Mua Tài Liệu</label>
                                                    <select class="form-control select2bs4"
                                                        name="status_store_document">
                                                        <option
                                                            <?=$CMSNT->site('status_store_document') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_store_document') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Nếu OFF, hệ thống sẽ ẩn menu Mua Tài Liệu.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giới hạn số tài khoản đăng ký trên 1
                                                        IP</label>
                                                    <input type="number" class="form-control" name="max_register_ip"
                                                        value="<?=$CMSNT->site('max_register_ip');?>">
                                                    <i>VD: <?=$CMSNT->site('max_register_ip');?> => mỗi IP chỉ được tạo
                                                        tối đa <?=$CMSNT->site('max_register_ip');?> tài khoản</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Mã PIN Cron Job</label>
                                                    <input type="number" class="form-control" name="pin_cron"
                                                        value="<?=$CMSNT->site('pin_cron');?>">
                                                    <p>Nếu bạn đặt mã PIN, các liên kết CRON sẽ phải chèn thêm đoạn
                                                        <b>in đậm</b> <?=base_url('cron/');?>...php<b
                                                            style="font-size: 15px;">?pin=<?=$CMSNT->site('pin_cron');?></b>
                                                        vào liên kết để tránh spam, để trống nếu không dùng chức năng
                                                        này.</p>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF API mua tài khoản</label>
                                                    <select class="form-control select2bs4"
                                                        name="status_api_buyproduct">
                                                        <option
                                                            <?=$CMSNT->site('status_api_buyproduct') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_api_buyproduct') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Nếu OFF, hệ thống sẽ chặn các website khác kết nối API để mua
                                                        hàng.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Bắt buộc user phải cập nhật số điện thoại</label>
                                                    <select class="form-control select2bs4"
                                                        name="is_update_phone">
                                                        <option
                                                            <?=$CMSNT->site('is_update_phone') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('is_update_phone') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Nếu chọn ON, hệ thống sẽ bắt user cập nhật số điện thoại mới có thể sử dụng website tiếp tục.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Xác thực OTP khi đăng nhập Admin</label>
                                                    <select class="form-control select2bs4"
                                                        name="status_otp_login_admin">
                                                        <option
                                                            <?=$CMSNT->site('status_otp_login_admin') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('status_otp_login_admin') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                    <i>Vui lòng cấu hình <a target="_blank" href="https://www.cmsnt.co/2022/12/huong-dan-cach-cau-hinh-smtp-e-gui.html">SMTP</a> trước khi bật chức năng này.</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Thông báo chạy MUA TÀI KHOẢN</label>
                                                    <textarea class="form-control"
                                                        placeholder="Nhập nội dung thông báo chạy, có thể dùng thẻ HTML"
                                                        name="marquee_notication_shopacc"><?=$CMSNT->site('marquee_notication_shopacc');?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Script Header</label>
                                                    <textarea id="codeMirrorDemo"
                                                        placeholder="Chứa code live chat hoặc jquery trang trí..."
                                                        name="javascript_header"><?=$CMSNT->site('javascript_header');?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Script Footer</label>
                                                    <textarea id="codeMirrorDemo2"
                                                        placeholder="Chứa code live chat hoặc jquery trang trí..."
                                                        name="javascript"><?=$CMSNT->site('javascript');?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>HTML trên danh sách sản phẩm</label>
                                                    <textarea id="html_top_product"
                                                        placeholder="Dùng để chèn đoạn code hiển thị quảng cáo"
                                                        name="html_top_product"><?=$CMSNT->site('html_top_product');?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>HTML trang Banned</label>
                                                    <textarea id="html_banned"
                                                        placeholder="Nội dung hiển thị trong trang khoá tài khoản"
                                                        name="html_banned"><?=$CMSNT->site('html_banned');?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>HTML trang chặn IP</label>
                                                    <textarea id="html_block_ip"
                                                        placeholder="Nội dung hiển thị trong trang chặn địa chỉ IP"
                                                        name="html_block_ip"><?=$CMSNT->site('html_block_ip');?></textarea>
                                                </div>
                                            </div>

                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="bot-telegram" role="tabpanel"
                                    aria-labelledby="bot-telegram-tab">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Loại thông báo</label>
                                            <?php if(checkAddon(112246) == false):?>
                                            <select class="form-control select2bs4" name="type_notification">
                                                <option
                                                    <?=$CMSNT->site('type_notification') == 'telegram' ? 'selected' : '';?>
                                                    value="telegram">Telegram
                                                </option>
                                                <option
                                                    <?=$CMSNT->site('type_notification') == 'off' ? 'selected' : '';?>
                                                    value="off">OFF
                                                </option>
                                            </select>
                                            <?php else:?>
                                            <div class="alert alert-danger" role="alert">
                                                <div class="iq-alert-text">Bạn chưa kích hoạt Addon này!</div>
                                            </div>
                                            <?php endif?>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token Telegram (<a target="_blank"
                                                    href="https://cmsnt.vn/2022/05/huong-dan-cau-hinh-bot-thong-bao-qua-telegram/">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="token_telegram"
                                                value="<?=$CMSNT->site('token_telegram');?>"
                                                placeholder="5323330732:AAFpurxAdW9vGGPE_cZ2gU_kDP-__kAsOVc">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Chat ID Telegram (<a target="_blank"
                                                    href="https://cmsnt.vn/2022/05/huong-dan-cau-hinh-bot-thong-bao-qua-telegram/">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="chat_id_telegram"
                                                value="<?=$CMSNT->site('chat_id_telegram');?>" placeholder="-788267800">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo khi import tài
                                                nguyên</label>
                                            <textarea name="noti_import_telegram"
                                                placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('noti_import_telegram');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{amount}</b> => Số lượng tài nguyên đưa lên.</li>
                                                <li><b>{name}</b> => Tên sản phẩm.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Chat ID Group thông báo import tài nguyên
                                                (<a target="_blank"
                                                    href="https://cmsnt.vn/2022/05/huong-dan-cau-hinh-bot-thong-bao-qua-telegram/">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="group_id_import_telegram"
                                                value="<?=$CMSNT->site('group_id_import_telegram');?>"
                                                placeholder="-788267800">
                                            <i>Nhập ID group cần gửi thông báo khi Admin import tài nguyên</i>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo mua tài khoản</label>
                                            <textarea name="buy_notification" placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('buy_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên khách hàng mua.</li>
                                                <li><b>{product_name}</b> => Tên sản phẩm khách hàng mua.</li>
                                                <li><b>{method}</b> => Phương thức mua Website hoặc API.</li>
                                                <li><b>{amount}</b> => Số lượng khách hàng mua.</li>
                                                <li><b>{available}</b> => Số lượng còn lại.</li>
                                                <li><b>{price}</b> => Số tiền khách hàng thanh toán.</li>
                                                <li><b>{trans_id}</b> => Mã đơn hàng.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo khi đăng ký tài
                                                khoản</label>
                                            <textarea name="register_notification"
                                                placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('register_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên đăng nhập.</li>
                                                <li><b>{email}</b> => Địa chỉ Email.</li>
                                                <li><b>{ip}</b> => Địa chỉ IP.</li>
                                                <li><b>{device}</b> => Thiết bị.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo nạp tiền</label>
                                            <textarea name="naptien_notification"
                                                placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('naptien_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên khách hàng nạp.</li>
                                                <li><b>{method}</b> => Phương thức nạp.</li>
                                                <li><b>{amount}</b> => Số tiền nạp.</li>
                                                <li><b>{price}</b> => Thực nhận.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo khi khách tạo hoá đơn nạp
                                                tiền</label>
                                            <textarea name="taohoadonnaptien_notification"
                                                placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('taohoadonnaptien_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên khách hàng nạp.</li>
                                                <li><b>{method}</b> => Phương thức nạp.</li>
                                                <li><b>{trans_id}</b> => Mã giao dịch.</li>
                                                <li><b>{amount}</b> => Số tiền nạp.</li>
                                                <li><b>{price}</b> => Thực nhận.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo khi khách yêu cầu tạo
                                                website con</label>
                                            <textarea name="create_website_notification"
                                                placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('create_website_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên khách hàng yêu cầu.</li>
                                                <li><b>{url}</b> => Tên miền khách hàng yêu cầu.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung thông báo mua Fanapge</label>
                                            <textarea name="buy_fanpage_notification" placeholder="Để trống để ẩn thông báo này"
                                                class="form-control"><?=$CMSNT->site('buy_fanpage_notification');?></textarea>
                                            <ul>
                                                <li><b>{domain}</b> => Tên website của quý khách.</li>
                                                <li><b>{username}</b> => Tên khách hàng mua.</li>
                                                <li><b>{product_name}</b> => Tên sản phẩm khách hàng mua.</li>
                                                <li><b>{method}</b> => Phương thức mua Website hoặc API.</li>
                                                <li><b>{url}</b> => Link Facebook.</li>
                                                <li><b>{price}</b> => Số tiền khách hàng thanh toán.</li>
                                                <li><b>{time}</b> => Thời gian.</li>
                                            </ul>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-icon-left btn-block m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="google-reCAPTCHA" role="tabpanel"
                                    aria-labelledby="google-reCAPTCHA-tab">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="reCAPTCHA_status">
                                                <option <?=$CMSNT->site('reCAPTCHA_status') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('reCAPTCHA_status') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Vui lòng cấu hình thông tin phía dưới trước khi kích hoạt ON reCAPTCHA.</i>
                                        </div>            
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">reCAPTCHA Site Key (<a target="_blank"
                                                    href="https://www.cmsnt.co/2023/05/huong-dan-cau-hinh-recaptcha-vao-ma.html">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="reCAPTCHA_site_key"
                                                value="<?=$CMSNT->site('reCAPTCHA_site_key');?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">reCAPTCHA Secret Key (<a target="_blank"
                                                    href="https://www.cmsnt.co/2023/05/huong-dan-cau-hinh-recaptcha-vao-ma.html">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="reCAPTCHA_secret_key"
                                                value="<?=$CMSNT->site('reCAPTCHA_secret_key');?>">
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-icon-left btn-block m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel"
                                    aria-labelledby="custom-tabs-three-profile-tab">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_bank">
                                                <option <?=$CMSNT->site('status_bank') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_bank') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng auto bank.</i>
                                        </div>
                                        <div class="form-group">
                                            <label>Server 1</label>
                                            <select class="form-control select2bs4" name="sv1_autobank">
                                                <option <?=$CMSNT->site('sv1_autobank') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('sv1_autobank') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Nạp tiền bằng hoá đơn, quét QR code...</i><br>
                                        </div>
                                        <div class="form-group">
                                            <label>Server 2</label>
                                            <select class="form-control select2bs4" name="sv2_autobank">
                                                <option <?=$CMSNT->site('sv2_autobank') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('sv2_autobank') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Nạp tiền theo nội dung + id, quét QR code...</i><br>
                                        </div>
                                        <div class="form-group">
                                            <label>Ngân hàng</label>
                                            <select class="form-control select2bs4" name="type_bank">
                                                <?php foreach ($config_listbank_auto as $key => $value) {?>
                                                <option <?=$CMSNT->site('type_bank') == $key ? 'selected' : '';?>
                                                    value="<?=$key;?>"><?=$value;?>
                                                </option>
                                                <?php }?>
                                            </select>
                                            <i>Chọn ngân hàng bạn cần sử dụng.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token Bank (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-auto-bank" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="token_bank"
                                                value="<?=$CMSNT->site('token_bank');?>"
                                                placeholder="Nhập token ngân hàng">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Số tài khoản (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-auto-bank" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="stk_bank"
                                                value="<?=$CMSNT->site('stk_bank');?>"
                                                placeholder="Nhập số tài khoản ngân hàng cần Auto">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mật khẩu Internet Banking (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-auto-bank" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="mk_bank"
                                                value="<?=$CMSNT->site('mk_bank');?>"
                                                placeholder="Nhập mật khẩu internet banking">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nội dung nạp</label>
                                            <input type="text" class="form-control" name="prefix_autobank"
                                                value="<?=$CMSNT->site('prefix_autobank');?>"
                                                placeholder="Tiền tố nội dung nạp tiền">
                                            <i>Chỉ áp dụng cho server 2</i>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-icon-left btn-block m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_momo">
                                                <option <?=$CMSNT->site('status_momo') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_momo') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng auto momo.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token MOMO (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-auto-momo" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="token_momo"
                                                value="<?=$CMSNT->site('token_momo');?>"
                                                placeholder="Nhập token ví momo">
                                        </div>
                                        <!-- <div class="form-group">
                                            <label for="exampleInputEmail1">QR CODE (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-auto-momo" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="qr_momo"
                                                value="<?=$CMSNT->site('qr_momo');?>"
                                                placeholder="Nhập link ảnh QRCODE">
                                        </div> -->
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab4">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_zalopay">
                                                <option <?=$CMSNT->site('status_zalopay') == 0 ? 'selected' : '';?>
                                                    value="0">
                                                    OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_zalopay') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng auto zalo pay.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token Zalo Pay</label>
                                            <input type="text" class="form-control" name="token_zalopay"
                                                value="<?=$CMSNT->site('token_zalopay');?>"
                                                placeholder="Nhập token zalo pay">
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab5" role="tabpanel" aria-labelledby="tab5">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_thesieure">
                                                <option <?=$CMSNT->site('status_thesieure') == 0 ? 'selected' : '';?>
                                                    value="0">
                                                    OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_thesieure') == 1 ? 'selected' : '';?>
                                                    value="1">
                                                    ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng auto thesieure.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token THESIEURE</label>
                                            <input type="text" class="form-control" name="token_thesieure"
                                                value="<?=$CMSNT->site('token_thesieure');?>"
                                                placeholder="Nhập token thesieure.com">
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab6" role="tabpanel" aria-labelledby="tab6">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_paypal">
                                                <option <?=$CMSNT->site('status_paypal') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_paypal') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng nạp paypal.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Client ID</label>
                                            <input type="text" class="form-control" name="clientId_paypal"
                                                value="<?=$CMSNT->site('clientId_paypal');?>"
                                                placeholder="Nhập Client ID Paypal">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Client Secret</label>
                                            <input type="text" class="form-control" name="clientSecret_paypal"
                                                value="<?=$CMSNT->site('clientSecret_paypal');?>"
                                                placeholder="Nhập Client Secret Paypal">
                                            <i>Cách lấy Secret và ID Paypal tại đây: <a
                                                    href="https://youtu.be/6r17Wj3UlNE?t=13" target="_blank">Xem
                                                    Ngay</a></i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Rate Paypal</label>
                                            <input type="number" class="form-control" name="rate_paypal"
                                                value="<?=$CMSNT->site('rate_paypal');?>"
                                                placeholder="Nhập Rate quy đổi sang VND">
                                            <i>Để <?=$CMSNT->site('rate_paypal');?> tức khách nạp 1 USD sẽ được
                                                <?=format_currency($CMSNT->site('rate_paypal'));?></i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Ghi chú nạp paypal</label>
                                            <textarea id="paypal_notice"
                                                name="paypal_notice"><?=$CMSNT->site('paypal_notice');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab7" role="tabpanel" aria-labelledby="tab7">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_napthe">
                                                <option <?=$CMSNT->site('status_napthe') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_napthe') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng nạp thẻ.</i>
                                        </div>
                                        <div class="form-group">
                                            <label>Partner ID (<a type="button" data-toggle="modal"
                                                    data-target="#modal-hd-nap-the" href="#">Xem hướng dẫn</a>)</label>
                                            <input type="text" name="partner_id_card"
                                                value="<?=$CMSNT->site('partner_id_card');?>" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Partner Key (<a type="button" data-toggle="modal"
                                                    data-target="#modal-hd-nap-the" href="#">Xem hướng dẫn</a>)</label>
                                            <input type="text" name="partner_key_card"
                                                value="<?=$CMSNT->site('partner_key_card');?>" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Phí Nạp Thẻ</label>
                                            <input type="text" class="form-control" name="ck_napthe"
                                                value="<?=$CMSNT->site('ck_napthe');?>"
                                                placeholder="Nhập phí nạp thẻ nếu có nạp thẻ">
                                            <i>Để <?=$CMSNT->site('ck_napthe');?> tức khách nạp 100.000đ sẽ được
                                                <?=format_currency(100000 - 100000 * $CMSNT->site('ck_napthe') / 100);?></i><br>
                                            <i>Để phí = 0 nếu quý khách muốn cộng cho user giống thực nhận tại hệ thống
                                                trumthere.vn</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Ghi chú nạp thẻ</label>
                                            <textarea id="notice_napthe"
                                                name="notice_napthe"><?=$CMSNT->site('notice_napthe');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab8" role="tabpanel" aria-labelledby="tab8">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_perfectmoney">
                                                <option <?=$CMSNT->site('status_perfectmoney') == 0 ? 'selected' : '';?>
                                                    value="0">
                                                    OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_perfectmoney') == 1 ? 'selected' : '';?>
                                                    value="1">
                                                    ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ tạm dừng nạp perfect money.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mã tài khoản Perfect Money</label>
                                            <input type="text" class="form-control" name="PAYEE_ACCOUNT_PM"
                                                value="<?=$CMSNT->site('PAYEE_ACCOUNT_PM');?>"
                                                placeholder="VD: U36599443">
                                            <i>Vào đây để lấy mật mã tài khoản và đơn vị tiền tệ: <a
                                                    href="https://perfectmoney.com/profile.html"
                                                    target="_blank">https://perfectmoney.com/profile.html</a></i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mật khẩu Thay thế (Alternate
                                                Passphrase)</label>
                                            <input type="text" class="form-control" name="perfectmoney_pass_pm"
                                                value="<?=$CMSNT->site('perfectmoney_pass_pm');?>"
                                                placeholder="Nhập mật khẩu thay thế">
                                            <i>Vào đây để lấy mật khẩu thay thế: <a
                                                    href="https://perfectmoney.com/settings.html"
                                                    target="_blank">https://perfectmoney.com/settings.html</a></i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Đơn vị tiền tệ</label>
                                            <input type="text" class="form-control" name="PAYMENT_UNITS_PM"
                                                value="<?=$CMSNT->site('PAYMENT_UNITS_PM');?>"
                                                placeholder="Nhập Rate quy đổi sang VND">
                                            <i>VD: USD, BTC, EUR, GOLD</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Rate PM</label>
                                            <input type="text" class="form-control" name="rate_pm"
                                                value="<?=$CMSNT->site('rate_pm');?>"
                                                placeholder="Nhập Rate quy đổi sang VND">
                                            <i>Để <?=$CMSNT->site('rate_pm');?> tức khách nạp 1 USD sẽ được
                                                <?=format_currency($CMSNT->site('rate_pm'));?></i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Ghi chú nạp Perfect Money</label>
                                            <textarea id="perfectmoney_notice"
                                                name="perfectmoney_notice"><?=$CMSNT->site('perfectmoney_notice');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab9" role="tabpanel" aria-labelledby="tab9">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_crypto">
                                                <option <?=$CMSNT->site('status_crypto') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_crypto') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Chọn OFF hệ thống sẽ ẩn nạp crypto.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Address (<a type="button"
                                                    data-toggle="modal" data-target="#modal-hd-crypto" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="crypto_address"
                                                value="<?=$CMSNT->site('crypto_address');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Token (<a type="button" data-toggle="modal"
                                                    data-target="#modal-hd-crypto" href="#">Xem
                                                    hướng dẫn</a>)</label>
                                            <input type="text" class="form-control" name="crypto_token"
                                                value="<?=$CMSNT->site('crypto_token');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Số tiền nạp tối thiểu</label>
                                            <input type="number" class="form-control" name="crypto_min"
                                                value="<?=$CMSNT->site('crypto_min');?>"
                                                placeholder="Số tiền nạp tối thiểu (nhập USD)">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Số tiền nạp tối đa</label>
                                            <input type="number" class="form-control" name="crypto_max"
                                                value="<?=$CMSNT->site('crypto_max');?>"
                                                placeholder="Số tiền nạp tối đa (nhập USD)">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Rate quy đổi USD sang VNĐ</label>
                                            <input type="number" class="form-control" name="rate_crypto"
                                                value="<?=$CMSNT->site('rate_crypto');?>"
                                                placeholder="Nhập mệnh giá VND quy đổi sang 1 USD">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Ghi chú thông tin crypto</label>
                                            <textarea id="notice_crypto"
                                                name="notice_crypto"><?=$CMSNT->site('notice_crypto');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab10" role="tabpanel" aria-labelledby="tab10">
                                    <form action="" method="POST">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiển thị cột đánh giá sản phẩm</label>
                                                    <select class="form-control select2bs4" name="display_rating">
                                                        <option
                                                            <?=$CMSNT->site('display_rating') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển Thị</option>
                                                        <option
                                                            <?=$CMSNT->site('display_rating') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiển thị cột số lượng đã bán</label>
                                                    <select class="form-control select2bs4" name="display_sold">
                                                        <option
                                                            <?=$CMSNT->site('display_sold') == 1 ? 'selected' : '';?>
                                                            value="1"><?=__('Hiển thị');?></option>
                                                        <option
                                                            <?=$CMSNT->site('display_sold') == 0 ? 'selected' : '';?>
                                                            value="0"><?=__('Ẩn');?></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiển thị cột quốc gia</label>
                                                    <select class="form-control select2bs4" name="display_country">
                                                        <option
                                                            <?=$CMSNT->site('display_country') == 1 ? 'selected' : '';?>
                                                            value="1"><?=__('Hiển thị');?></option>
                                                        <option
                                                            <?=$CMSNT->site('display_country') == 0 ? 'selected' : '';?>
                                                            value="0"><?=__('Ẩn');?></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiển thị cột xem trước (preview)</label>
                                                    <select class="form-control select2bs4" name="display_preview">
                                                        <option
                                                            <?=$CMSNT->site('display_preview') == 1 ? 'selected' : '';?>
                                                            value="1"><?=__('Hiển thị');?></option>
                                                        <option
                                                            <?=$CMSNT->site('display_preview') == 0 ? 'selected' : '';?>
                                                            value="0"><?=__('Ẩn');?></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Template giao diện hiện thị sản phẩm</label>
                                                    <select class="form-control select2bs4" name="display_show_product">
                                                        <option
                                                            <?=$CMSNT->site('display_show_product') == 1 ? 'selected' : '';?>
                                                            value="1">Template 1 (LIST, BOX, BOX 2, BOX 3, BOX 4)
                                                        </option>
                                                        <option
                                                            <?=$CMSNT->site('display_show_product') == 2 ? 'selected' : '';?>
                                                            value="2">Template 2 (LIST, BOX)</option>
                                                        <?php if(checkAddon(1) == false):?>
                                                        <option
                                                            <?=$CMSNT->site('display_show_product') == 3 ? 'selected' : '';?>
                                                            value="3">Template 3 (LIST)</option>
                                                        <?php endif?>
                                                        <?php if(checkAddon(3) == false):?>
                                                        <option
                                                            <?=$CMSNT->site('display_show_product') == 4 ? 'selected' : '';?>
                                                            value="4">Template 4 (BOX)</option>
                                                        <?php endif?>
                                                        <option
                                                            <?=$CMSNT->site('display_show_product') == 5 ? 'selected' : '';?>
                                                            value="5">Template 5 (BOX)</option>

                                                    </select>
                                                    <i>Chọn kiểu sắp xếp sản phẩm</i>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Loại hiện thị</label>
                                                    <select class="form-control select2bs4" name="type_showProduct">
                                                        <option
                                                            <?=$CMSNT->site('type_showProduct') == 1 ? 'selected' : '';?>
                                                            value="1">Type BOX</option>
                                                        <option
                                                            <?=$CMSNT->site('type_showProduct') == 2 ? 'selected' : '';?>
                                                            value="2">Type LIST</option>
                                                        <option
                                                            <?=$CMSNT->site('type_showProduct') == 'BOX2' ? 'selected' : '';?>
                                                            value="BOX2">Type BOX 2</option>
                                                        <option
                                                            <?=$CMSNT->site('type_showProduct') == 'BOX3' ? 'selected' : '';?>
                                                            value="BOX3">Type BOX 3</option>
                                                        <option
                                                            <?=$CMSNT->site('type_showProduct') == 'BOX4' ? 'selected' : '';?>
                                                            value="BOX4">Type BOX 4</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Hiển thị chuyên mục</label>
                                                    <select class="form-control select2bs4" name="show_category">
                                                        <option
                                                            <?=$CMSNT->site('show_category') == 'head' ? 'selected' : '';?>
                                                            value="head">Trên cùng</option>
                                                        <option
                                                            <?=$CMSNT->site('show_category') == 'hide' ? 'selected' : '';?>
                                                            value="hide">Không hiển thị</option>
                                                        <option disabled
                                                            <?=$CMSNT->site('show_category') == 'right' ? 'selected' : '';?>
                                                            value="right">Bên phải (sắp ra mắt)</option>
                                                            <option disabled
                                                            <?=$CMSNT->site('show_category') == 'foot' ? 'selected' : '';?>
                                                            value="foot">Bên dưới màn hình (sắp ra mắt)</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>ON/OFF Sản Phẩm Gợi Ý</label>
                                                    <select class="form-control select2bs4" name="display_box_shop">
                                                        <option
                                                            <?=$CMSNT->site('display_box_shop') == 1 ? 'selected' : '';?>
                                                            value="1">Hiển Thị</option>
                                                        <option
                                                            <?=$CMSNT->site('display_box_shop') == 0 ? 'selected' : '';?>
                                                            value="0">Ẩn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Ẩn sản phẩm khi hết tài khoản</label>
                                                    <select class="form-control select2bs4" name="hide_product_empty">
                                                        <option
                                                            <?=$CMSNT->site('hide_product_empty') == 1 ? 'selected' : '';?>
                                                            value="1">ON</option>
                                                        <option
                                                            <?=$CMSNT->site('hide_product_empty') == 0 ? 'selected' : '';?>
                                                            value="0">OFF</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tab11" role="tabpanel" aria-labelledby="tab10">
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Vị trí hiện giao dịch gần đây</label>
                                            <select class="form-control select2bs4" name="position_gd_gan_day">
                                                <option <?=$CMSNT->site('position_gd_gan_day') == 1 ? 'selected' : '';?>
                                                    value="1">TRÊN SẢN PHẨM ĐANG BÁN</option>
                                                <option <?=$CMSNT->site('position_gd_gan_day') == 2 ? 'selected' : '';?>
                                                    value="2">DƯỚI SẢN PHẨM ĐANG BÁN</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>ON/OFF Giao dịch gần đây</label>
                                            <select class="form-control select2bs4" name="status_giao_dich_gan_day">
                                                <option
                                                    <?=$CMSNT->site('status_giao_dich_gan_day') == 1 ? 'selected' : '';?>
                                                    value="1">ON</option>
                                                <option
                                                    <?=$CMSNT->site('status_giao_dich_gan_day') == 0 ? 'selected' : '';?>
                                                    value="0">OFF</option>
                                            </select>
                                            <i>Giao dịch mua tài khoản gần đây được hiển thị tại trang home.</i>
                                        </div>
                                        <div class="form-group">
                                            <label>ON/OFF Tạo giao dịch ảo</label>
                                            <?php if(checkAddon(2) == false):?>
                                            <select class="form-control select2bs4" name="stt_giaodichao">
                                                <option <?=$CMSNT->site('stt_giaodichao') == 1 ? 'selected' : '';?>
                                                    value="1">Bật</option>
                                                <option <?=$CMSNT->site('stt_giaodichao') == 0 ? 'selected' : '';?>
                                                    value="0">Tắt</option>
                                            </select>
                                            <?php else:?>
                                            <div class="alert alert-danger" role="alert">
                                                <div class="iq-alert-text">Bạn chưa kích hoạt Addon này!</div>
                                            </div>
                                            <?php endif?>
                                            <i>Hệ thống tự tạo giao dịch nạp tiền và mua hàng ảo để tăng uy
                                                tín.</i>
                                        </div>
                                        <div class="form-group">
                                            <label>Không tạo giao dịch ảo khi sản phẩm hết hàng</label>
                                            <select class="form-control select2bs4" name="is_account_buy_fake">
                                                <option <?=$CMSNT->site('is_account_buy_fake') == 1 ? 'selected' : '';?>
                                                    value="1">ON</option>
                                                <option <?=$CMSNT->site('is_account_buy_fake') == 0 ? 'selected' : '';?>
                                                    value="0">OFF</option>
                                            </select>
                                            <i>Chọn ON để ngưng tạo giao dịch ảo khi sản phẩm hết tài khoản (chỉ áp dụng
                                                cho sản phẩm up lên web, không áp dụng cho sản phẩm API).</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Số lượng mua tối thiểu</label>
                                            <input type="number" class="form-control" name="min_gd_ao"
                                                value="<?=$CMSNT->site('min_gd_ao');?>"
                                                placeholder="Nhập số lượng mua tối thiểu ảo">
                                            <i>Số lượng mua ảo tối thiểu cho 1 đơn hàng.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Số lượng mua tối đa</label>
                                            <input type="number" class="form-control" name="max_gd_ao"
                                                value="<?=$CMSNT->site('max_gd_ao');?>"
                                                placeholder="Nhập số lượng mua tối đa ảo">
                                            <i>Số lượng mua ảo tối đa cho 1 đơn hàng.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tốc độ tạo giao dịch mua ảo</label>
                                            <input type="number" class="form-control" name="speed_buy_gd_ao"
                                                value="<?=$CMSNT->site('speed_buy_gd_ao');?>"
                                                placeholder="Mặc định: 10">
                                            <i>Tốc độ tạo giao dịch mua ảo, số càng bé giao dịch tạo ra càng nhanh.</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mệnh giá nạp ảo ngẫu nhiên</label>
                                            <textarea class="form-control" rows="4"
                                                placeholder="Nhập số tiền nạp ngẫu nhiên, 1 dòng 1 mệnh giá "
                                                name="amount_nap_ao"><?=$CMSNT->site('amount_nap_ao');?></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tốc độ tạo giao dịch nạp ảo</label>
                                            <input type="number" class="form-control" name="speed_nap_gd_ao"
                                                value="<?=$CMSNT->site('speed_nap_gd_ao');?>"
                                                placeholder="Mặc định: 10">
                                            <i>Tốc độ tạo giao dịch nạp ảo, số càng bé giao dịch tạo ra càng nhanh.</i>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="toyyibpay" role="tabpanel" aria-labelledby="tab9">
                                    <h4 class="text-center">Bank Malaysia's automatic top-up system</h4>
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="status_toyyibpay">
                                                <option <?=$CMSNT->site('status_toyyibpay') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('status_toyyibpay') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                            <i>Select OFF, the system will hide recharge via Toyyibpay</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">User Secret Key</label>
                                            <input type="text" class="form-control" name="userSecretKey_toyyibpay"
                                                value="<?=$CMSNT->site('userSecretKey_toyyibpay');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Category Code</label>
                                            <input type="text" class="form-control" name="categoryCode_toyyibpay"
                                                value="<?=$CMSNT->site('categoryCode_toyyibpay');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Minimum deposit amount</label>
                                            <input type="text" class="form-control" name="min_toyyibpay"
                                                value="<?=$CMSNT->site('min_toyyibpay');?>" placeholder="">
                                            <i>1 = RM1</i>
                                        </div>
                                        <div class="form-group">
                                            <label>FPX fee option</label>
                                            <select class="form-control select2bs4" name="billChargeToCustomer">
                                                <option
                                                    <?=$CMSNT->site('billChargeToCustomer') == '0' ? 'selected' : '';?>
                                                    value="0">Your customers pay a fee
                                                </option>
                                                <option
                                                    <?=$CMSNT->site('billChargeToCustomer') == '' ? 'selected' : '';?>
                                                    value="">You pay fees
                                                </option>
                                            </select>
                                            <i>Select OFF, the system will hide recharge via Toyyibpay</i>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">1 VND is equal to how many RM</label>
                                            <input type="text" class="form-control" name="rate_toyyibpay"
                                                value="<?=$CMSNT->site('rate_toyyibpay');?>" placeholder="">

                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Note when depositing with Toyyibpay</label>
                                            <textarea id="notice_toyyibpay"
                                                name="notice_toyyibpay"><?=$CMSNT->site('notice_toyyibpay');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>

                                <div class="tab-pane fade" id="flutterwave" role="tabpanel" aria-labelledby="tab9">
                                    <h4 class="text-center">Flutterwave Nigeria Recharge</h4>
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="flutterwave_status">
                                                <option <?=$CMSNT->site('flutterwave_status') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('flutterwave_status') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Public Key</label>
                                            <input type="text" class="form-control" name="flutterwave_publicKey"
                                                value="<?=$CMSNT->site('flutterwave_publicKey');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Secret Key</label>
                                            <input type="text" class="form-control" name="flutterwave_secretKey"
                                                value="<?=$CMSNT->site('flutterwave_secretKey');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">1 NGN is equal to how many VND</label>
                                            <input type="text" class="form-control" name="flutterwave_rate"
                                                value="<?=$CMSNT->site('flutterwave_rate');?>" placeholder="">

                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Notice</label>
                                            <textarea id="flutterwave_notice"
                                                name="flutterwave_notice"><?=$CMSNT->site('flutterwave_notice');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>

                                <div class="tab-pane fade" id="squadco" role="tabpanel" aria-labelledby="tab9">
                                    <h4 class="text-center">Squadco Nigeria Recharge</h4>
                                    <form action="" method="POST">
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control select2bs4" name="squadco_status">
                                                <option <?=$CMSNT->site('squadco_status') == 0 ? 'selected' : '';?>
                                                    value="0">OFF
                                                </option>
                                                <option <?=$CMSNT->site('squadco_status') == 1 ? 'selected' : '';?>
                                                    value="1">ON
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Public Key</label>
                                            <input type="text" class="form-control" name="squadco_Public_Key"
                                                value="<?=$CMSNT->site('squadco_Public_Key');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Secret Key</label>
                                            <input type="text" class="form-control" name="squadco_Secret_Key"
                                                value="<?=$CMSNT->site('squadco_Secret_Key');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Currency</label>
                                            <input type="text" class="form-control" name="squadco_currency_code"
                                                value="<?=$CMSNT->site('squadco_currency_code');?>" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">1 <?=$CMSNT->site('squadco_currency_code');?> is equal to how many VND</label>
                                            <input type="text" class="form-control" name="squadco_rate"
                                                value="<?=$CMSNT->site('squadco_rate');?>" placeholder="">
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Notice</label>
                                            <textarea id="squadco_notice"
                                                name="squadco_notice"><?=$CMSNT->site('squadco_notice');?></textarea>
                                        </div>
                                        <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                            type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>


                <section class="col-lg-12 connectedSortable">
                    <form action="" method="POST">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h3 class="card-title">
                                    <i class="fas fa-cogs mr-1"></i>
                                    CẤU HÌNH NỘI DUNG
                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn bg-success btn-sm" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn bg-warning btn-sm" data-card-widget="maximize"><i
                                            class="fas fa-expand"></i>
                                    </button>
                                    <button type="button" class="btn bg-danger btn-sm" data-card-widget="remove">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Thông báo toàn hệ thống</label>
                                    <textarea id="thongbao" name="thongbao"><?=$CMSNT->site('thongbao');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Ghi chú nạp tiền</label>
                                    <textarea id="recharge_notice"
                                        name="recharge_notice"><?=$CMSNT->site('recharge_notice');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Ghi chú vòng quay</label>
                                    <textarea id="notice_spin"
                                        name="notice_spin"><?=$CMSNT->site('notice_spin');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Ghi chú lịch sử đơn hàng</label>
                                    <textarea id="orders_notice"
                                        name="orders_notice"><?=$CMSNT->site('orders_notice');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Chính sách bảo mật</label>
                                    <textarea id="chinh_sach_bao_mat"
                                        name="chinh_sach_bao_mat"><?=$CMSNT->site('chinh_sach_bao_mat');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Điều khoản sử dụng</label>
                                    <textarea id="dieu_khoan_su_dung"
                                        name="dieu_khoan_su_dung"><?=$CMSNT->site('dieu_khoan_su_dung');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Lưu ý tiếp thị liên kết</label>
                                    <textarea id="notice_ref"
                                        name="notice_ref"><?=$CMSNT->site('notice_ref');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Trang liên hệ</label>
                                    <textarea id="contact_page"
                                        name="contact_page"><?=$CMSNT->site('contact_page');?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Thông báo nổi</label>
                                    <textarea id="notice_popup"
                                        name="notice_popup"><?=$CMSNT->site('notice_popup');?></textarea>
                                </div>
                            </div>
                            <div class="card-footer clearfix">
                                <button name="SaveSettings" class="btn btn-info btn-block btn-icon-left m-b-10"
                                    type="submit"><i class="fas fa-save mr-1"></i>Lưu Ngay</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->


<div class="modal fade" id="modal-hd-font-family">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">HƯỚNG DẪN THAY FONT WEBSITE</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul>
                    <li>Bước 1: Truy cập vào <a target="_blank"
                            href="https://fonts.google.com/">https://fonts.google.com/</a> tìm và chọn FONT quý khách
                        cần thay.</li>
                    <li>Bước 2: Quý khách nhấn vào FONT quý khách chọn sau đó để ý bên tay phải màn hình có ô <b>Use on
                            the web</b>.</li>
                    <li>Bước 3: Quý khách tích vào <b>
                            < link>
                        </b> và copy toàn bộ dữ liệu trong ô.</li>
                    <li>Bước 4: Quý khách chèn dữ liệu đã copy phía trên vào ô <b>Script Header</b> trên website quý
                        khách.</li>
                    <li>Bước 5: Quý khách nhìn vào ô <b>CSS rules to specify families</b> - Copy 1 dòng
                        <b>font-family</b> quý khách muốn chọn và dán vào ô trên (không bắt buộc thao tác này, tuỳ nhu
                        cầu).
                    </li>
                </ul>
                <h4 class="text-center">Chúc quý khách thành công <img
                        src="https://i.pinimg.com/736x/c4/2c/98/c42c983e8908fdbd6574c2135212f7e4.jpg" width="45px;">
                </h4>

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modal-hd-nap-the">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">HƯỚNG DẪN TÍCH HỢP NẠP THẺ CÀO</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul>
                    <li>Bước 1: Truy cập vào <a target="_blank"
                            href="https://thesieure.com/account/login">https://thesieure.com/account/login</a> <b>đăng
                            ký</b> tài khoản và <b>đăng nhập</b>.</li>
                    <li>Bước 2: Truy cập vào <a target="_blank" href="https://thesieure.com/merchant/list">https://thesieure.com/merchant/list</a> để tiến
                        hành tạo API mới.</li>
                    <li>Bước 3: Nhập lần lượt như sau:</li>
                    <b>Tên mô tả:</b> => <i><?=check_string($_SERVER['SERVER_NAME']);?> - SHOPCLONE6</i><br>
                    <b>Chọn ví giao dịch:</b> => <i>VND</i><br>
                    <b>Kiểu:</b> => <i>GET</i><br>
                    <b>Đường dẫn nhận dữ liệu (Callback Url):</b> => <i><?=BASE_URL('api/card.php');?></i><br>
                    <b>Địa chỉ IP (không bắt buộc):</b> => <i></i><br>
                    <li>Bước 4: Thêm thông tin kết nối và <a target="_blank" href="https://zalo.me/0814005773">inbox</a>
                        ngay cho Admin để duyệt API.</li>
                    <li>Bước 5: Copy Partner ID dán vào ô Partner ID trên hệ thống.</li>
                    <li>Bước 6: Copy Partner Key dán vào ô Partner Key trên hệ thống.</li>
                </ul>
                <h4 class="text-center">Chúc quý khách thành công <img
                        src="https://i.pinimg.com/736x/c4/2c/98/c42c983e8908fdbd6574c2135212f7e4.jpg" width="45px;">
                </h4>

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modal-hd-crypto">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">HƯỚNG DẪN TÍCH HỢP NẠP TIỀN TỰ ĐỘNG QUA CRYPTO</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul>
                    <li>Bước 1: Truy cập vào <a target="_blank" href="https://fpayment.co/client/register">đây</a> để
                        <b>đăng ký</b> tài khoản và
                        <b>đăng nhập</b>.
                    </li>
                    <li>Bước 2: Truy cập vào <a target="_blank" href="https://fpayment.co/client/wallets">đây</a> để
                        thêm ví Tron vào hệ thống.
                    </li>
                    <li>Bước 3: Sau khi thêm ví Tron thành công, quý khách Copy <b>Token</b> và <b>Address</b> vào
                        Admin.</li>
                    <li>Bước 4: Vui lòng nạp số dư duy trì vào FPAYMENT.CO trước để giao dịch được tự động.</li>
                </ul>
                </ul>
                <p>Hướng dẫn chi tiết tại <a target="_blank"
                        href="https://www.cmsnt.co/2023/02/huong-dan-tich-hop-nap-tien-tu-ong-bang.html">đây</a>.</p>
                <h4 class="text-center">Chúc quý khách thành công <img
                        src="https://i.pinimg.com/736x/c4/2c/98/c42c983e8908fdbd6574c2135212f7e4.jpg" width="45px;">
                </h4>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modal-hd-auto-bank">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">HƯỚNG DẪN TÍCH HỢP NẠP TIỀN TỰ ĐỘNG QUA NGÂN HÀNG</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul>
                    <li>Bước 1: Truy cập vào <a target="_blank"
                            href="https://api.web2m.com/Register.html?ref=113">đây</a> để <b>đăng ký</b> tài khoản và
                        <b>đăng nhập</b>.
                    </li>
                    <li>Bước 2: Chọn ngân hàng bạn muốn kết nối Auto, sau đó nhấn vào nút <b>Thêm tài khoản {tên ngân
                            hàng}</b>.</li>
                    <li>Bước 3: Nhập đầy đủ thông tin đăng nhập Internet Banking của bạn vào form để tiến hành kết nối.
                    </li>
                    <li>Bước 4: Nhấn vào <b>Lấy Token</b> sau đó check email để copy <b>Token</b> vừa lấy.</li>
                    <li>Bước 5: Dán <b>Token</b> vào ô <b>Token Bank</b> trong website của bạn.</li>
                    <li>Bước 6: Nhập số tài khoản của bạn vừa kết nối vào ô <b>Số tài khoản</b>.</li>
                    <li>Bước 7: Nhập mật khẩu Internet Banking vào ô <b>Mật khẩu Internet Banking</b> và nhấn lưu.</li>
                    <li>Bước 8: Quay lại <a target="_blank" href="https://api.web2m.com/Home/nangcap">đây</a> và tiến
                        hành gia hạn gói Bank mà bạn cần dùng để bắt đầu sử dụng Auto.</li>
                </ul>
                <p>Hướng dẫn bằng Video xem tại <a target="_blank"
                        href="https://www.youtube.com/watch?v=N8CuOJTD6l8">đây</a>.</p>
                <h4 class="text-center">Chúc quý khách thành công <img
                        src="https://i.pinimg.com/736x/c4/2c/98/c42c983e8908fdbd6574c2135212f7e4.jpg" width="45px;">
                </h4>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modal-hd-auto-momo">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">HƯỚNG DẪN TÍCH HỢP NẠP TIỀN TỰ ĐỘNG QUA VÍ MOMO</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Hướng dẫn lấy Token MOMO để cài Auto.</p>
                <ul>
                    <li>Bước 1: Truy cập vào <a target="_blank"
                            href="https://api.web2m.com/Register.html?ref=113">đây</a> để <b>đăng ký</b> tài khoản và
                        <b>đăng nhập</b>.
                    </li>
                    <li>Bước 2: Chọn ngân hàng bạn muốn kết nối Auto, sau đó nhấn vào nút <b>Thêm tài khoản MoMo</b>.
                    </li>
                    <li>Bước 3: Nhập đầy đủ thông tin đăng nhập MoMo của bạn vào form để tiến hành kết nối.</li>
                    <li>Bước 4: Nhấn vào <b>Lấy Token</b> sau đó check email để copy <b>Token</b> vừa lấy.</li>
                    <li>Bước 5: Dán <b>Token</b> vào ô <b>Token MOMO</b> trong website của bạn và nhấn Lưu.</li>
                    <li>Bước 6: Quay lại <a target="_blank" href="https://api.web2m.com/Home/nangcap">đây</a> và tiến
                        hành gia hạn gói MOMO và bắt đầu sử dụng Auto.</li>
                    <li>Hướng dẫn bằng Video xem tại <a target="_blank"
                            href="https://www.youtube.com/watch?v=5WRqOmxzBPc">đây</a>.</li>
                </ul>
                <!-- <p>Hướng dẫn lấy mã QR MOMO</p>
                <ul>
                    <li>Bước 1: Truy cập App <b>MOMO</b> -> <b>Ví của tôi</b> -> nhấn vào <b>Tên Chủ Ví</b> ở dòng đầu
                        tiên trong ví MOMO của bạn.</li>
                    <li>Bước 2: Kéo xuống dưới cùng chọn <b>Mã NHẬN TIỀN của tôi</b> -> nhấn <b>lưu hình</b>.</li>
                    <li>Bước 3: Sau khi lưu hình bạn vào <a target="_blank" href="https://imgur.com/upload?beta">đây</a>
                        để up hình vừa lưu lên cloud.</li>
                    <li>Bước 4: Sau khi up lên cloud imgur bạn rê chuột phải vào ảnh chọn <b>copy địa chỉ hình ảnh</b>
                        (hoặc tiếng anh có nghĩa tương tự) để tiến hành copy link ảnh .jpg hoặc .png.</li>
                    <li>Bước 5: Dán link ảnh vừa copy vào ô <b>QR CODE</b>.</li>
                </ul> -->
                <h4 class="text-center">Chúc quý khách thành công <img
                        src="https://i.pinimg.com/736x/c4/2c/98/c42c983e8908fdbd6574c2135212f7e4.jpg" width="45px;">
                </h4>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<script>
$(function() {
    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
        $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    })
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("html_block_ip"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("html_banned"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("html_top_product"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo2"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("marquee_notication_shopacc"), {
        mode: "htmlmixed",
        theme: "monokai"
    });

})
</script>
<!-- ckeditor -->
<script>
CKEDITOR.replace("squadco_notice");
CKEDITOR.replace("flutterwave_notice");
CKEDITOR.replace("notice_toyyibpay");
CKEDITOR.replace("notice_popup");
CKEDITOR.replace("notice_ref");
CKEDITOR.replace("perfectmoney_notice");
CKEDITOR.replace("notice_spin");
CKEDITOR.replace("notice_napthe");
CKEDITOR.replace("recharge_notice");
CKEDITOR.replace("paypal_notice");
CKEDITOR.replace("orders_notice");
CKEDITOR.replace("thongbao");
CKEDITOR.replace("contact_page");
CKEDITOR.replace("chinh_sach_bao_mat");
CKEDITOR.replace("dieu_khoan_su_dung");
CKEDITOR.replace("notice_crypto");
</script>


<?php
require_once(__DIR__.'/footer.php');
?>