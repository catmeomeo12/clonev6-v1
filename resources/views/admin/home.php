<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Dashboard',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '

    <!-- DataTables -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
';
$body['footer'] = '
    <!-- DataTables  & Plugins -->
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/jszip/jszip.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/pdfmake/pdfmake.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/pdfmake/vfs_fonts.js"></script>   
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
';
require_once(__DIR__.'/../../../models/is_admin.php');
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
require_once(__DIR__.'/nav.php');


function where_not_admin($type){
    global $CMSNT;
    $where_not_admin = "";
    foreach ($CMSNT->get_list("SELECT * FROM `users` WHERE `admin` = 1 ") as $qw) {
        $where_not_admin .= " `$type` != '".$qw['id']."' AND";
    }
    return $where_not_admin;
}

$yesterday = date('Y-m-d', strtotime("-1 day")); // hôm qua
$currentWeek = date("W");
$currentMonth = date('m');
$currentYear = date('Y');
$currentDate = date("Y-m-d");


?>
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Bảng Điều Khiển</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item active"><a href="<?=base_url_admin('addons');?>" type="button"
                                class="btn btn-primary"><i class="fa-solid fa-plug mr-1"></i>CỬA HÀNG PLUGIN</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <h5>Gửi quý khách hàng của <b style="color: yellow;">Nguyễn Hoàng Phúc</b></h5>
                <ul>
                    <li>Quý khách vui lòng tham gia nhóm Zalo của <b style="color:yellow;">Nguyễn Hoàng Phúc</b> để nắm bắt thông tin cập nhật chi tiết của sản
                        phẩm, luôn luôn nhận được các thông báo mới nhất về Nguyễn Hoàng Phúc để tối ưu nhất trong quá trình hoạt
                        động.</li>
                    <li>Website dịch vụ MXH giá rẻ: <a target="_blank"
                            href="https://subsieuviet.com" target="_blank">SUBSIEUVIET.COM</a></li>
                    <li>Website bán via, clon, mail giá rẻ: <a target="_blank"
                            href="https://dichvuprize.com" target="_blank">DICHVUPRIZE.COM</a> -
                    <li>Website Checkscam Của Designed <a target="_blank" href="https://checkscamsv.com" target="_blank">CHECKSCAMSV.COM</a></li>
                    <li>Liên hệ chúng tôi để được hỗ trợ <a href="https://zalo.me/0814005773" target="_blank">0814005773</a>
                    </li>
                </ul>
            </div>
            <div class="alert alert-dark">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <b>Phiên bản hiện tại: <span style="color: red;font-size:18px;"><?=$config['version'];?></span></b><img src="https://i.imgur.com/4ig0RIo.png" style="height:60px;" />

                <ul>
                    <li>Chi tiết cập nhật vui lòng xem tại <a target="_blank" href="https://zalo.me/0814005773">đây</a>
                        chỉ áp dụng cho khách hàng nhận source từ <b style="color:yellow;">Nguyễn Hoàng Phúc</b></li>
                        <li>Update một số chức năng </li>
                </ul>
                <i>Liên Hệ <b style="color:yellow;">Nguyễn Hoàng Phúc</b> để cập nhật liên tục. <i><center><button class="codepro-custom-btn codepro-btn-3" target="blank" title="Code Pro" onclick="window.open('https://zalo.me/0814005773')"><span>Zalo Designer</span></button></center></i>






                </div></i>
            </div>
            <style>
                .lienket{       
    background-color: red;
    color: red;
    border: 2px solid red;
    border-radius:5px;
    padding: 5px  5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    font-family: "Lucida Sans Unicode";
}
.lienket:hover{
    background-color: blue;
    color:white;
}
.lienket:active{
    background-color: red;
    border-color: red;
}
            </style>
            <style type="text/css">
    .codepro-custom-btn {
        width: 130px;
        height: 40px;
        color: #fff;
        border-radius: 5px;
        padding: 10px 25px;
        font-family: 'Lato', sans-serif;
        font-weight: 500;
        background: transparent;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5), 7px 7px 20px 0 rgba(0, 0, 0, .1), 4px 4px 5px 0 rgba(0, 0, 0, .1);
        outline: none
    }

    .codepro-btn-1 {
        background: rgb(6, 14, 131);
        background: linear-gradient(0deg, rgba(6, 14, 131, 1) 0%, rgba(12, 25, 180, 1) 100%);
        border: none
    }

    .codepro-btn-1:hover {
        background: rgb(0, 3, 255);
        background: linear-gradient(0deg, rgba(0, 3, 255, 1) 0%, rgba(2, 126, 251, 1) 100%)
    }

    .codepro-btn-2 {
        background: rgb(96, 9, 240);
        background: linear-gradient(0deg, rgba(96, 9, 240, 1) 0%, rgba(129, 5, 240, 1) 100%);
        border: none
    }

    .codepro-btn-2:before {
        height: 0%;
        width: 2px
    }

    .codepro-btn-2:hover {
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .5), -4px -4px 6px 0 rgba(116, 125, 136, .5), inset -4px -4px 6px 0 rgba(255, 255, 255, .2), inset 4px 4px 6px 0 rgba(0, 0, 0, .4)
    }

    .codepro-btn-3 {
        background: rgb(0, 172, 238);
        background: linear-gradient(0deg, rgba(0, 172, 238, 1) 0%, rgba(2, 126, 251, 1) 100%);
        width: 130px;
        height: 40px;
        line-height: 42px;
        padding: 0;
        border: none
    }

    .codepro-btn-3 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%
    }

    .codepro-btn-3:before,
    .codepro-btn-3:after {
        position: absolute;
        content: "";
        right: 0;
        top: 0;
        background: rgba(2, 126, 251, 1);
        transition: all 0.3s ease
    }

    .codepro-btn-3:before {
        height: 0%;
        width: 2px
    }

    .codepro-btn-3:after {
        width: 0%;
        height: 2px
    }

    .codepro-btn-3:hover {
        background: transparent;
        box-shadow: none
    }

    .codepro-btn-3:hover:before {
        height: 100%
    }

    .codepro-btn-3:hover:after {
        width: 100%
    }

    .codepro-btn-3 span:hover {
        color: rgba(2, 126, 251, 1)
    }

    .codepro-btn-3 span:before,
    .codepro-btn-3 span:after {
        position: absolute;
        content: "";
        left: 0;
        bottom: 0;
        background: rgba(2, 126, 251, 1);
        transition: all 0.3s ease
    }

    .codepro-btn-3 span:before {
        width: 2px;
        height: 0%
    }

    .codepro-btn-3 span:after {
        width: 0%;
        height: 2px
    }

    .codepro-btn-3 span:hover:before {
        height: 100%
    }

    .codepro-btn-3 span:hover:after {
        width: 100%
    }

    .codepro-btn-4 {
        background-color: #4dccc6;
        background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
        line-height: 42px;
        padding: 0;
        border: none
    }

    .codepro-btn-4:hover {
        background-color: #89d8d3;
        background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%)
    }

    .codepro-btn-4 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%
    }

    .codepro-btn-4:before,
    .codepro-btn-4:after {
        position: absolute;
        content: "";
        right: 0;
        top: 0;
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .9), -4px -4px 6px 0 rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .9), inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
        transition: all 0.3s ease
    }

    .codepro-btn-4:before {
        height: 0%;
        width: .1px
    }

    .codepro-btn-4:after {
        width: 0%;
        height: .1px
    }

    .codepro-btn-4:hover:before {
        height: 100%
    }

    .codepro-btn-4:hover:after {
        width: 100%
    }

    .codepro-btn-4 span:before,
    .codepro-btn-4 span:after {
        position: absolute;
        content: "";
        left: 0;
        bottom: 0;
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .9), -4px -4px 6px 0 rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .9), inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
        transition: all 0.3s ease
    }

    .codepro-btn-4 span:before {
        width: .1px;
        height: 0%
    }

    .codepro-btn-4 span:after {
        width: 0%;
        height: .1px
    }

    .codepro-btn-4 span:hover:before {
        height: 100%
    }

    .codepro-btn-4 span:hover:after {
        width: 100%
    }

    .codepro-btn-5 {
        width: 130px;
        height: 40px;
        line-height: 42px;
        padding: 0;
        border: none;
        background: rgb(255, 27, 0);
        background: linear-gradient(0deg, rgba(255, 27, 0, 1) 0%, rgba(251, 75, 2, 1) 100%)
    }

    .codepro-btn-5:hover {
        color: #f0094a;
        background: transparent;
        box-shadow: none
    }

    .codepro-btn-5:before,
    .codepro-btn-5:after {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        height: 2px;
        width: 0;
        background: #f0094a;
        box-shadow: -1px -1px 5px 0 #fff, 7px 7px 20px 0 #0003, 4px 4px 5px 0 #0002;
        transition: 400ms ease all
    }

    .codepro-btn-5:after {
        right: inherit;
        top: inherit;
        left: 0;
        bottom: 0
    }

    .codepro-btn-5:hover:before,
    .codepro-btn-5:hover:after {
        width: 100%;
        transition: 800ms ease all
    }

    .codepro-btn-6 {
        background: rgb(247, 150, 192);
        background: radial-gradient(circle, rgba(247, 150, 192, 1) 0%, rgba(118, 174, 241, 1) 100%);
        line-height: 42px;
        padding: 0;
        border: none
    }

    .codepro-btn-6 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%
    }

    .codepro-btn-6:before,
    .codepro-btn-6:after {
        position: absolute;
        content: "";
        height: 0%;
        width: 1px;
        box-shadow: -1px -1px 20px 0 rgba(255, 255, 255, 1), -4px -4px 5px 0 rgba(255, 255, 255, 1), 7px 7px 20px 0 rgba(0, 0, 0, .4), 4px 4px 5px 0 rgba(0, 0, 0, .3)
    }

    .codepro-btn-6:before {
        right: 0;
        top: 0;
        transition: all 500ms ease
    }

    .codepro-btn-6:after {
        left: 0;
        bottom: 0;
        transition: all 500ms ease
    }

    .codepro-btn-6:hover {
        background: transparent;
        color: #76aef1;
        box-shadow: none
    }

    .codepro-btn-6:hover:before {
        transition: all 500ms ease;
        height: 100%
    }

    .codepro-btn-6:hover:after {
        transition: all 500ms ease;
        height: 100%
    }

    .codepro-btn-6 span:before,
    .codepro-btn-6 span:after {
        position: absolute;
        content: "";
        box-shadow: -1px -1px 20px 0 rgba(255, 255, 255, 1), -4px -4px 5px 0 rgba(255, 255, 255, 1), 7px 7px 20px 0 rgba(0, 0, 0, .4), 4px 4px 5px 0 rgba(0, 0, 0, .3)
    }

    .codepro-btn-6 span:before {
        left: 0;
        top: 0;
        width: 0%;
        height: .5px;
        transition: all 500ms ease
    }

    .codepro-btn-6 span:after {
        right: 0;
        bottom: 0;
        width: 0%;
        height: .5px;
        transition: all 500ms ease
    }

    .codepro-btn-6 span:hover:before {
        width: 100%
    }

    .codepro-btn-6 span:hover:after {
        width: 100%
    }

    .codepro-btn-7 {
        background: linear-gradient(0deg, rgba(255, 151, 0, 1) 0%, rgba(251, 75, 2, 1) 100%);
        line-height: 42px;
        padding: 0;
        border: none
    }

    .codepro-btn-7 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%
    }

    .codepro-btn-7:before,
    .codepro-btn-7:after {
        position: absolute;
        content: "";
        right: 0;
        bottom: 0;
        background: rgba(251, 75, 2, 1);
        box-shadow: -7px -7px 20px 0 rgba(255, 255, 255, .9), -4px -4px 5px 0 rgba(255, 255, 255, .9), 7px 7px 20px 0 rgba(0, 0, 0, .2), 4px 4px 5px 0 rgba(0, 0, 0, .3);
        transition: all 0.3s ease
    }

    .codepro-btn-7:before {
        height: 0%;
        width: 2px
    }

    .codepro-btn-7:after {
        width: 0%;
        height: 2px
    }

    .codepro-btn-7:hover {
        color: rgba(251, 75, 2, 1);
        background: transparent
    }

    .codepro-btn-7:hover:before {
        height: 100%
    }

    .codepro-btn-7:hover:after {
        width: 100%
    }

    .codepro-btn-7 span:before,
    .codepro-btn-7 span:after {
        position: absolute;
        content: "";
        left: 0;
        top: 0;
        background: rgba(251, 75, 2, 1);
        box-shadow: -7px -7px 20px 0 rgba(255, 255, 255, .9), -4px -4px 5px 0 rgba(255, 255, 255, .9), 7px 7px 20px 0 rgba(0, 0, 0, .2), 4px 4px 5px 0 rgba(0, 0, 0, .3);
        transition: all 0.3s ease
    }

    .codepro-btn-7 span:before {
        width: 2px;
        height: 0%
    }

    .codepro-btn-7 span:after {
        height: 2px;
        width: 0%
    }

    .codepro-btn-7 span:hover:before {
        height: 100%
    }

    .codepro-btn-7 span:hover:after {
        width: 100%
    }

    .codepro-btn-8 {
        background-color: #f0ecfc;
        background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
        line-height: 42px;
        padding: 0;
        border: none
    }

    .codepro-btn-8 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%
    }

    .codepro-btn-8:before,
    .codepro-btn-8:after {
        position: absolute;
        content: "";
        right: 0;
        bottom: 0;
        background: #c797eb;
        transition: all 0.3s ease
    }

    .codepro-btn-8:before {
        height: 0%;
        width: 2px
    }

    .codepro-btn-8:after {
        width: 0%;
        height: 2px
    }

    .codepro-btn-8:hover:before {
        height: 100%
    }

    .codepro-btn-8:hover:after {
        width: 100%
    }

    .codepro-btn-8:hover {
        background: transparent
    }

    .codepro-btn-8 span:hover {
        color: #c797eb
    }

    .codepro-btn-8 span:before,
    .codepro-btn-8 span:after {
        position: absolute;
        content: "";
        left: 0;
        top: 0;
        background: #c797eb;
        transition: all 0.3s ease
    }

    .codepro-btn-8 span:before {
        width: 2px;
        height: 0%
    }

    .codepro-btn-8 span:after {
        height: 2px;
        width: 0%
    }

    .codepro-btn-8 span:hover:before {
        height: 100%
    }

    .codepro-btn-8 span:hover:after {
        width: 100%
    }

    .codepro-btn-9 {
        border: none;
        transition: all 0.3s ease;
        overflow: hidden
    }

    .codepro-btn-9:after {
        position: absolute;
        content: " ";
        z-index: -1;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #1fd1f9;
        background-image: linear-gradient(315deg, #1fd1f9 0%, #b621fe 74%);
        transition: all 0.3s ease
    }

    .codepro-btn-9:hover {
        background: transparent;
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .5), -4px -4px 6px 0 rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .5), inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
        color: #fff
    }

    .codepro-btn-9:hover:after {
        -webkit-transform: scale(2) rotate(180deg);
        transform: scale(2) rotate(180deg);
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .5), -4px -4px 6px 0 rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .5), inset 4px 4px 6px 0 rgba(116, 125, 136, .3)
    }

    .codepro-btn-10 {
        background: rgb(22, 9, 240);
        background: linear-gradient(0deg, rgba(22, 9, 240, 1) 0%, rgba(49, 110, 244, 1) 100%);
        color: #fff;
        border: none;
        transition: all 0.3s ease;
        overflow: hidden
    }

    .codepro-btn-10:after {
        position: absolute;
        content: " ";
        top: 0;
        left: 0;
        z-index: -1;
        width: 100%;
        height: 100%;
        transition: all 0.3s ease;
        -webkit-transform: scale(.1);
        transform: scale(.1)
    }

    .codepro-btn-10:hover {
        color: #fff;
        border: none;
        background: transparent
    }

    .codepro-btn-10:hover:after {
        background: rgb(0, 3, 255);
        background: linear-gradient(0deg, rgba(2, 126, 251, 1) 0%, rgba(0, 3, 255, 1)100%);
        -webkit-transform: scale(1);
        transform: scale(1)
    }

    .codepro-btn-11 {
        border: none;
        background: rgb(251, 33, 117);
        background: linear-gradient(0deg, rgba(251, 33, 117, 1) 0%, rgba(234, 76, 137, 1) 100%);
        color: #fff;
        overflow: hidden
    }

    .codepro-btn-11:hover {
        text-decoration: none;
        color: #fff
    }

    .codepro-btn-11:before {
        position: absolute;
        content: '';
        display: inline-block;
        top: -180px;
        left: 0;
        width: 30px;
        height: 100%;
        background-color: #fff;
        animation: shiny-btn1 3s ease-in-out infinite
    }

    .codepro-btn-11:hover {
        opacity: .7
    }

    .codepro-btn-11:active {
        box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .3), -4px -4px 6px 0 rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .2), inset 4px 4px 6px 0 rgba(0, 0, 0, .2)
    }

    @-webkit-keyframes shiny-btn1 {
        0% {
            -webkit-transform: scale(0) rotate(45deg);
            opacity: 0
        }

        80% {
            -webkit-transform: scale(0) rotate(45deg);
            opacity: 0.5
        }

        81% {
            -webkit-transform: scale(4) rotate(45deg);
            opacity: 1
        }

        100% {
            -webkit-transform: scale(50) rotate(45deg);
            opacity: 0
        }
    }

    .codepro-btn-12 {
        position: relative;
        right: 20px;
        bottom: 20px;
        border: none;
        box-shadow: none;
        width: 130px;
        height: 40px;
        line-height: 42px;
        -webkit-perspective: 230px;
        perspective: 230px
    }

    .codepro-btn-12 span {
        background: rgb(0, 172, 238);
        background: linear-gradient(0deg, rgba(0, 172, 238, 1) 0%, rgba(2, 126, 251, 1) 100%);
        display: block;
        position: absolute;
        width: 130px;
        height: 40px;
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5), 7px 7px 20px 0 rgba(0, 0, 0, .1), 4px 4px 5px 0 rgba(0, 0, 0, .1);
        border-radius: 5px;
        margin: 0;
        text-align: center;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-transition: all .3s;
        transition: all .3s
    }

    .codepro-btn-12 span:nth-child(1) {
        box-shadow: -7px -7px 20px 0 #fff9, -4px -4px 5px 0 #fff9, 7px 7px 20px 0 #0002, 4px 4px 5px 0 #0001;
        -webkit-transform: rotateX(90deg);
        -moz-transform: rotateX(90deg);
        transform: rotateX(90deg);
        -webkit-transform-origin: 50% 50% -20px;
        -moz-transform-origin: 50% 50% -20px;
        transform-origin: 50% 50% -20px
    }

    .codepro-btn-12 span:nth-child(2) {
        -webkit-transform: rotateX(0deg);
        -moz-transform: rotateX(0deg);
        transform: rotateX(0deg);
        -webkit-transform-origin: 50% 50% -20px;
        -moz-transform-origin: 50% 50% -20px;
        transform-origin: 50% 50% -20px
    }

    .codepro-btn-12:hover span:nth-child(1) {
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5), 7px 7px 20px 0 rgba(0, 0, 0, .1), 4px 4px 5px 0 rgba(0, 0, 0, .1);
        -webkit-transform: rotateX(0deg);
        -moz-transform: rotateX(0deg);
        transform: rotateX(0deg)
    }

    .codepro-btn-12:hover span:nth-child(2) {
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5), 7px 7px 20px 0 rgba(0, 0, 0, .1), 4px 4px 5px 0 rgba(0, 0, 0, .1);
        color: transparent;
        -webkit-transform: rotateX(-90deg);
        -moz-transform: rotateX(-90deg);
        transform: rotateX(-90deg)
    }

    .codepro-btn-13 {
        background-color: #89d8d3;
        background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);
        border: none;
        z-index: 1
    }

    .codepro-btn-13:after {
        position: absolute;
        content: "";
        width: 100%;
        height: 0;
        bottom: 0;
        left: 0;
        z-index: -1;
        border-radius: 5px;
        background-color: #4dccc6;
        background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
        box-shadow: -7px -7px 20px 0 #fff9, -4px -4px 5px 0 #fff9, 7px 7px 20px 0 #0002, 4px 4px 5px 0 #0001;
        transition: all 0.3s ease
    }

    .codepro-btn-13:hover {
        color: #fff
    }

    .codepro-btn-13:hover:after {
        top: 0;
        height: 100%
    }

    .codepro-btn-13:active {
        top: 2px
    }

    .codepro-btn-14 {
        background: rgb(255, 151, 0);
        border: none;
        z-index: 1
    }

    .codepro-btn-14:after {
        position: absolute;
        content: "";
        width: 100%;
        height: 0;
        top: 0;
        left: 0;
        z-index: -1;
        border-radius: 5px;
        background-color: #eaf818;
        background-image: linear-gradient(315deg, #eaf818 0%, #f6fc9c 74%);
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5);
        7px 7px 20px 0 rgba(0, 0, 0, .1),
        4px 4px 5px 0 rgba(0, 0, 0, .1);
        transition: all 0.3s ease
    }

    .codepro-btn-14:hover {
        color: #000
    }

    .codepro-btn-14:hover:after {
        top: auto;
        bottom: 0;
        height: 100%
    }

    .codepro-btn-14:active {
        top: 2px
    }

    .codepro-btn-15 {
        background: #b621fe;
        border: none;
        z-index: 1
    }

    .codepro-btn-15:after {
        position: absolute;
        content: "";
        width: 0;
        height: 100%;
        top: 0;
        right: 0;
        z-index: -1;
        background-color: #663dff;
        border-radius: 5px;
        box-shadow: inset 2px 2px 2px 0 rgba(255, 255, 255, .5), 7px 7px 20px 0 rgba(0, 0, 0, .1), 4px 4px 5px 0 rgba(0, 0, 0, .1);
        transition: all 0.3s ease
    }

    .codepro-btn-15:hover {
        color: #fff
    }

    .codepro-btn-15:hover:after {
        left: 0;
        width: 100%
    }

    .codepro-btn-15:active {
        top: 2px
    }

    .codepro-btn-16 {
        border: none;
        color: #000
    }

    .codepro-btn-16:after {
        position: absolute;
        content: "";
        width: 0;
        height: 100%;
        top: 0;
        left: 0;
        direction: rtl;
        z-index: -1;
        box-shadow: -7px -7px 20px 0 #fff9, -4px -4px 5px 0 #fff9, 7px 7px 20px 0 #0002, 4px 4px 5px 0 #0001;
        transition: all 0.3s ease
    }

    .codepro-btn-16:hover {
        color: #000
    }

    .codepro-btn-16:hover:after {
        left: auto;
        right: 0;
        width: 100%
    }

    .codepro-btn-16:active {
        top: 2px
    }
</style>
        
            
            <?php if($CMSNT->site('reCAPTCHA_status') != 1):?>
            <div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5><i class="icon fas fa-exclamation-triangle"></i> Cảnh báo!</h5>
                Vui lòng cấu hình <b>reCAPTCHA</b> để chống spam và dò mật khẩu website.<br>
                Cấu hình <b>reCAPTCHA</b> trong cài đặt -> <b>Google reCAPTCHA</b>.
            </div>
            <?php endif?>
            <div class="row">
                <div class="col-lg-3 col-12">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3><?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `orders` WHERE `fake` = 0 ")['COUNT(id)']);?>
                            </h3>
                            <p>Đơn hàng đã bán</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="<?=base_url_admin('product-order');?>" class="small-box-footer">Xem thêm <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3><?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `buyer` IS NOT NULL ")['COUNT(id)']);?>
                            </h3>
                            <p>Tài khoản đã bán</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="<?=base_url_admin('product-order');?>" class="small-box-footer">Xem thêm <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-12">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3><?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `users` ")['COUNT(id)']);?></h3>
                            <p>Tổng thành viên</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="<?=base_url_admin('users');?>" class="small-box-footer">Xem thêm <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-12">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                        <div class="inner">
                            <h3><?=format_currency($CMSNT->get_row("SELECT SUM(`pay`) FROM `orders` WHERE `fake` = 0 ")['SUM(`pay`)']);?>
                            </h3>
                            <p>Doanh thu đơn hàng</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="<?=base_url_admin('product-order');?>" class="small-box-footer">Xem thêm <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-lg-4 col-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <h3 class="card-title">Thống kê tháng <?=date('m', time());?></h3>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-success text-xl">
                                    <i class="ion ion-ios-refresh-empty"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_currency($CMSNT->get_row("SELECT SUM(`pay`) FROM `orders` WHERE `fake` = 0 AND YEAR(create_date) = ".date('Y')." AND MONTH(create_date) = ".date('m')." ")['SUM(`pay`)']);?>
                                    </span>
                                    <span class="text-muted">DOANH THU ĐƠN HÀNG</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-warning text-xl">
                                    <i class="ion ion-ios-cart-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `buyer` IS NOT NULL AND YEAR(update_date) = ".date('Y')." AND MONTH(update_date) = ".date('m')." ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">TÀI KHOẢN ĐÃ BÁN</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center mb-0">
                                <p class="text-danger text-xl">
                                    <i class="ion ion-ios-people-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `users` WHERE YEAR(create_date) = ".date('Y')." AND MONTH(create_date) = ".date('m')." ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">THÀNH VIÊN MỚI</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <h3 class="card-title">Thống kê tuần</h3>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-success text-xl">
                                    <i class="ion ion-ios-refresh-empty"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_currency($CMSNT->get_row("SELECT SUM(`pay`) FROM `orders` WHERE `fake` = 0 AND YEAR(create_date) = $currentYear AND WEEK(create_date, 1) = $currentWeek ")['SUM(`pay`)']);?>
                                    </span>
                                    <span class="text-muted">DOANH THU ĐƠN HÀNG</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-warning text-xl">
                                    <i class="ion ion-ios-cart-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `buyer` IS NOT NULL AND YEAR(update_date) = $currentYear AND WEEK(update_date, 1) = $currentWeek ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">TÀI KHOẢN ĐÃ BÁN</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center mb-0">
                                <p class="text-danger text-xl">
                                    <i class="ion ion-ios-people-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `users` WHERE WEEK(create_date, 1) = WEEK(CURDATE(), 1) ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">THÀNH VIÊN MỚI</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <h3 class="card-title">Thống kê hôm nay</h3>
                        </div> 
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-success text-xl">
                                    <i class="ion ion-ios-refresh-empty"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_currency($CMSNT->get_row("SELECT SUM(`pay`) FROM `orders` WHERE `fake` = 0 AND `create_date` LIKE '%".date("Y-m-d")."%' ")['SUM(`pay`)']);?>
                                    </span>
                                    <span class="text-muted">DOANH THU ĐƠN HÀNG</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                <p class="text-warning text-xl">
                                    <i class="ion ion-ios-cart-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `buyer` IS NOT NULL AND `update_date` LIKE '%".date("Y-m-d")."%' ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">TÀI KHOẢN ĐÃ BÁN</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                            <div class="d-flex justify-content-between align-items-center mb-0">
                                <p class="text-danger text-xl">
                                    <i class="ion ion-ios-people-outline"></i>
                                </p>
                                <p class="d-flex flex-column text-right">
                                    <span class="font-weight-bold">
                                        <?=format_cash($CMSNT->get_row("SELECT COUNT(id) FROM `users` WHERE `create_date` LIKE '%".date("Y-m-d")."%' ")['COUNT(id)']);?>
                                    </span>
                                    <span class="text-muted">THÀNH VIÊN MỚI</span>
                                </p>
                            </div>
                            <!-- /.d-flex -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-12">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-12">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-12">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-info"><i class="far fa-money-bill-alt"></i></span>
                                        <div class="info-box-content">
                                            <span class="info-box-text">Tổng tiền nạp toàn thời gian</span>
                                            <span class="info-box-number"><?=format_currency(
    $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_pm` WHERE `status` = 1 ")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`pay`) FROM `invoices` WHERE `status` = 1 AND `fake` = 0 ")['SUM(`pay`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `cards` WHERE `status` = 1 ")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_paypal` ")['SUM(`price`)']+
                                    $CMSNT->get_row("SELECT SUM(amount) FROM `server2_autobank` ")['SUM(amount)']+
                                    ($CMSNT->get_row("SELECT SUM(amount) FROM `crypto_invoice` WHERE `status` = 'completed' ")['SUM(amount)'] * $CMSNT->site('rate_crypto'))
);?></span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-3 col-sm-3 col-12">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-success"><i
                                                class="far fa-money-bill-alt"></i></span>
                                        <div class="info-box-content">
                                            <span class="info-box-text">Tổng tiền nạp tháng
                                                <?=date('m', time());?></span>
                                            <span class="info-box-number"><?=format_currency(
                                        $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_pm` WHERE `status` = 1 AND YEAR(update_date) = ".date('Y')." AND MONTH(update_date) = ".date('m')." ")['SUM(`price`)'] +
                                $CMSNT->get_row("SELECT SUM(`pay`) FROM `invoices` WHERE `status` = 1 AND `fake` = 0 AND YEAR(update_date) = ".date('Y')." AND MONTH(update_date) = ".date('m')." ")['SUM(`pay`)'] +
                                $CMSNT->get_row("SELECT SUM(`price`) FROM `cards` WHERE `status` = 1 AND YEAR(update_date) = ".date('Y')." AND MONTH(update_date) = ".date('m')." ")['SUM(`price`)'] +
                                $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_paypal` WHERE  YEAR(create_date) = ".date('Y')." AND MONTH(create_date) = ".date('m')." ")['SUM(`price`)']
                                +
                                $CMSNT->get_row("SELECT SUM(amount) FROM `server2_autobank` WHERE YEAR(create_gettime) = ".date('Y')." AND MONTH(create_gettime) = ".date('m')." ")['SUM(amount)'] 
                                +
                                ($CMSNT->get_row("SELECT SUM(amount) FROM `crypto_invoice` WHERE `status` = 'completed' AND MONTH(create_gettime) = '$currentMonth' AND YEAR(create_gettime) = '$currentYear' ")['SUM(amount)'] * $CMSNT->site('rate_crypto')) 
                                
                                );?></span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-3 col-sm-3 col-12">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-warning"><i
                                                class="far fa-money-bill-alt"></i></span>
                                        <div class="info-box-content">
                                            <span class="info-box-text">Tổng tiền nạp tuần</span>
                                            <span class="info-box-number"><?=format_currency(
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_pm` WHERE `status` = 1 AND YEAR(update_date) = $currentYear AND WEEK(update_date, 1) = $currentWeek ")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`pay`) FROM `invoices` WHERE `status` = 1 AND `fake` = 0 AND YEAR(update_date) = $currentYear AND WEEK(update_date, 1) = $currentWeek ")['SUM(`pay`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `cards` WHERE `status` = 1 AND YEAR(update_date) = $currentYear AND WEEK(update_date, 1) = $currentWeek ")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_paypal` WHERE YEAR(create_date) = $currentYear AND WEEK(create_date, 1) = $currentWeek ")['SUM(`price`)']
                                    +
                                    $CMSNT->get_row("SELECT SUM(amount) FROM `server2_autobank` WHERE YEAR(create_gettime) = $currentYear AND WEEK(create_gettime, 1) = $currentWeek ")['SUM(amount)']
                                    +
                                    ($CMSNT->get_row("SELECT SUM(amount) FROM `crypto_invoice` WHERE `status` = 'completed' AND YEAR(create_gettime) = $currentYear AND WEEK(create_gettime, 1) = $currentWeek ")['SUM(amount)'] * $CMSNT->site('rate_crypto')) 
                                );?></span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-3 col-sm-3 col-12">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-danger"><i
                                                class="far fa-money-bill-alt"></i></span>
                                        <div class="info-box-content">
                                            <span class="info-box-text">Tổng tiền nạp hôm nay</span>
                                            <span class="info-box-number"><?=format_currency(
                                        $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_pm` WHERE `status` = 1 AND `update_date` LIKE '%".date("Y-m-d")."%' ")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`pay`) FROM `invoices` WHERE `status` = 1 AND `fake` = 0 AND `update_date` LIKE '%".date("Y-m-d")."%'")['SUM(`pay`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `cards` WHERE `status` = 1 AND `update_date` LIKE '%".date("Y-m-d")."%'")['SUM(`price`)'] +
                                    $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_paypal` WHERE `create_date` LIKE '%".date("Y-m-d")."%'")['SUM(`price`)']
                                    +
                                    $CMSNT->get_row("SELECT SUM(amount) FROM `server2_autobank` WHERE `create_gettime` LIKE '%".date("Y-m-d")."%' ")['SUM(amount)']
                                    +
                                    ($CMSNT->get_row("SELECT SUM(amount) FROM `crypto_invoice` WHERE `status` = 'completed' AND `create_gettime` LIKE '%".date("Y-m-d")."%' ")['SUM(amount)'] * $CMSNT->site('rate_crypto'))
                                    );?></span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-12">
                            <div class="card">
                                <div class="card-header border-0">
                                    <h3 class="card-title">Doanh thu trong tháng <?=date('m', time());?></h3>
                                </div>
                                <div class="card-body">
                                    <canvas id="myChart"></canvas>
                                    <script>
                                    function formatCurrency(value) {
                                        return value.toLocaleString('vi-VN', {
                                            style: 'currency',
                                            currency: 'VND'
                                        });
                                    }
                                    var ctx = document.getElementById('myChart').getContext('2d');
                                    var myChart = new Chart(ctx, {
                                        type: 'line',
                                        data: {
                                            labels: [
                                                <?php
              $month = date('m');
              $year = date('Y');
              $numOfDays = cal_days_in_month(CAL_GREGORIAN, $month, $year);

              for ($day = 1; $day <= $numOfDays; $day++) {
                  echo "\"$day/$month/$year\",";
              }
              ?>
                                            ],
                                            datasets: [{
                                                label: '<?=__('DOANH THU ĐƠN HÀNG');?>',
                                                data: [
                                                    <?php
                  $data = [];
                  for ($day = 1; $day <= $numOfDays; $day++) {
                      $date = "$year-$month-$day";
                      $row = $CMSNT->get_row("SELECT SUM(`pay`) FROM `orders` WHERE `fake` = 0 AND DATE(create_date) = '$date'  ");
                      $data[$day - 1] = $row['SUM(`pay`)'];
                  }
                  for ($i = 0; $i < $numOfDays; $i++) {
                      echo "$data[$i],";
                  }
                  ?>
                                                ],
                                                backgroundColor: [
                                                    'rgb(255 239 201)'
                                                ],
                                                borderColor: [
                                                    'rgb(255 193 5)'
                                                ],
                                                borderWidth: 1
                                            }, ]
                                        },
                                        options: {
                                            tooltips: {
                                                callbacks: {
                                                    label: function(tooltipItem, data) {
                                                        return formatCurrency(tooltipItem.yLabel);
                                                    }
                                                }
                                            },
                                            scales: {
                                                yAxes: [{
                                                    ticks: {
                                                        beginAtZero: true,
                                                        callback: function(value, index, values) {
                                                            return formatCurrency(value);
                                                        }
                                                    }
                                                }]
                                            }
                                        }
                                    });
                                    </script>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-12">
                            <div class="card">
                                <div class="card-header border-0">
                                    <h3 class="card-title">Nạp tiền trong tháng <?=date('m', time());?></h3>
                                </div>
                                <div class="card-body">
                                    <canvas id="myChart1"></canvas>
                                    <script>
                                    function formatCurrency(value) {
                                        return value.toLocaleString('vi-VN', {
                                            style: 'currency',
                                            currency: 'VND'
                                        });
                                    }
                                    var ctx = document.getElementById('myChart1').getContext('2d');
                                    var myChart = new Chart(ctx, {
                                        type: 'line',
                                        data: {
                                            labels: [
                                                <?php
              $month = date('m');
              $year = date('Y');
              $numOfDays = cal_days_in_month(CAL_GREGORIAN, $month, $year);

              for ($day = 1; $day <= $numOfDays; $day++) {
                  echo "\"$day/$month/$year\",";
              }
              ?>
                                            ],
                                            datasets: [{
                                                label: '<?=__('TIỀN NẠP TRONG THÁNG');?>',
                                                data: [
                                                    <?php
                  $data = [];
                  for ($day = 1; $day <= $numOfDays; $day++) {
                      $date = "$year-$month-$day";

                      $total_pm_chart1 = $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_pm` WHERE `status` = 1 AND DATE(update_date) = '$date' ")['SUM(`price`)'];
                      $total_invoice_chart1 = $CMSNT->get_row("SELECT SUM(`pay`) FROM `invoices` WHERE `status` = 1 AND `fake` = 0 AND DATE(update_date) = '$date' ")['SUM(`pay`)'];
                      $total_card_chart1 = $CMSNT->get_row("SELECT SUM(`price`) FROM `cards` WHERE `status` = 1 AND DATE(update_date) = '$date' ")['SUM(`price`)'];
                      $total_paypal_chart1 = $CMSNT->get_row("SELECT SUM(`price`) FROM `payment_paypal` WHERE DATE(create_date) = '$date' ")['SUM(`price`)'];
                      $total_bank2_chart1 = $CMSNT->get_row("SELECT SUM(amount) FROM `server2_autobank` WHERE DATE(create_gettime) = '$date' ")['SUM(amount)'];
                      $total_crypto_chart1 = $CMSNT->get_row("SELECT SUM(amount) FROM `crypto_invoice` WHERE `status` = 'completed' AND DATE(create_gettime) = '$date' ")['SUM(amount)'] * $CMSNT->site('rate_crypto');
                      $total_chart1 = $total_pm_chart1 + $total_invoice_chart1 + $total_card_chart1 + $total_paypal_chart1 + $total_bank2_chart1 + $total_crypto_chart1;
                      $data[$day - 1] = $total_chart1;
                  }
                  for ($i = 0; $i < $numOfDays; $i++) {
                      echo "$data[$i],";
                  }
                  ?>
                                                ],
                                                backgroundColor: [
                                                    'rgb(255 239 201)'
                                                ],
                                                borderColor: [
                                                    'rgb(255 193 5)'
                                                ],
                                                borderWidth: 1
                                            }, ]
                                        },
                                        options: {
                                            tooltips: {
                                                callbacks: {
                                                    label: function(tooltipItem, data) {
                                                        return formatCurrency(tooltipItem.yLabel);
                                                    }
                                                }
                                            },
                                            scales: {
                                                yAxes: [{
                                                    ticks: {
                                                        beginAtZero: true,
                                                        callback: function(value, index, values) {
                                                            return formatCurrency(value);
                                                        }
                                                    }
                                                }]
                                            }
                                        }
                                    });
                                    </script>
                                </div>

                            </div>
                        </div>
                    </div>



                    <section class="col-lg-12 connectedSortable">
                        <div class="card card-primary card-outline">
                            <div class="card-header ">
                                <h3 class="card-title">
                                    <i class="fas fa-history mr-1"></i>
                                    200 GIAO DỊCH GẦN ĐÂY (<i>Ẩn dòng tiền của Admin</i>)
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
                                <div class="table-responsive p-0">
                                    <table id="datatable1" class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th width="5%">#</th>
                                                <th>Username</th>
                                                <th>Số tiền trước</th>
                                                <th>Số tiền thay đổi</th>
                                                <th>Số tiền hiện tại</th>
                                                <th>Thời gian</th>
                                                <th>Nội dung</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $i=0; foreach ($CMSNT->get_list("SELECT * FROM `dongtien` WHERE ".where_not_admin('user_id')." `id` > 0 ORDER BY id DESC LIMIT 200 ") as $row) {?>
                                            <tr>
                                                <td class="text-center"><?=$i++;?></td>
                                                <td class="text-center"><a
                                                        href="<?=base_url('admin/user-edit/'.$row['user_id']);?>"><?=getUser($row['user_id'], 'username');?></a>
                                                </td>
                                                <td class="text-center"><b
                                                        style="color: green;"><?=format_currency($row['sotientruoc']);?></b>
                                                </td>
                                                <td class="text-center"><b
                                                        style="color:red;"><?=format_currency($row['sotienthaydoi']);?></b>
                                                </td>
                                                <td class="text-center"><b
                                                        style="color: blue;"><?=format_currency($row['sotiensau']);?></b>
                                                </td>
                                                <td class="text-center"><i><?=$row['thoigian'];?></i></td>
                                                <td><i><?=$row['noidung'];?></i></td>
                                            </tr>
                                            <?php }?>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="d-flex justify-content-end align-items-center border-top-table p-2">
                                    <a type="button" href="<?=base_url_admin('dong-tien');?>"
                                        class="btn btn-primary">Xem
                                        Thêm <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="col-lg-12 connectedSortable">
                        <div class="card card-primary card-outline">
                            <div class="card-header ">
                                <h3 class="card-title">
                                    <i class="fas fa-history mr-1"></i>
                                    200 NHẬT KÝ HOẠT ĐỘNG GẦN ĐÂY (<i>Ẩn nhật ký của Admin</i>)
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
                                <div class="table-responsive p-0">
                                    <table id="datatable2" class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th width="5%">#</th>
                                                <th>Username</th>
                                                <th width="40%">Action</th>
                                                <th>Time</th>
                                                <th>Ip</th>
                                                <th width="30%">Device</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $i=0; foreach ($CMSNT->get_list("SELECT * FROM `logs` WHERE ".where_not_admin('user_id')." `id` > 0 ORDER BY id DESC LIMIT 200 ") as $row) {?>
                                            <tr>
                                                <td><?=$i++;?></td>
                                                <td class="text-center"><a
                                                        href="<?=base_url('admin/user-edit/'.$row['user_id']);?>"><?=getUser($row['user_id'], 'username');?></a>
                                                </td>
                                                <td><?=$row['action'];?></td>
                                                <td><?=$row['createdate'];?></td>
                                                <td><?=$row['ip'];?></td>
                                                <td><?=$row['device'];?></td>
                                            </tr>
                                            <?php }?>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="d-flex justify-content-end align-items-center border-top-table p-2">
                                    <a type="button" href="<?=base_url_admin('logs');?>" class="btn btn-primary">Xem
                                        Thêm <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>


    <?php
require_once(__DIR__.'/footer.php');
?>