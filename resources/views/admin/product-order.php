<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Đơn hàng sản phẩm',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '
    <!-- Select2 -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
';
$body['footer'] = '
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


$sotin1trang = 10;
if(isset($_GET['page'])){
    $page = check_string(intval($_GET['page']));
}
else{
    $page = 1;
}
$from = ($page - 1) * $sotin1trang;
$where = ' `product_id` != 0 AND `fake` = 0 ';
$transid = '';
$transidAPI = '';
$buyer = '';
$product = '';
$id_connect_api = '';
$create_date = '';
$account = '';
$username = '';

if (!empty($_GET['username'])) {
    $username = check_string($_GET['username']);
    if($idUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `username` = '$username' ")){
        $where .= ' AND `buyer` =  "'.$idUser['id'].'" ';
    }
}
if (!empty($_GET['account'])) {
    $account = check_string($_GET['account']);
    if($account_transid = $CMSNT->get_row(" SELECT * FROM `accounts` WHERE `account` LIKE '%$account%' ")){
        $where .= ' AND `trans_id` = "'.$account_transid['trans_id'].'" ';
    }
}
if(!empty($_GET['transid'])){
    $transid = check_string($_GET['transid']);
    $where .= ' AND `trans_id` LIKE "%'.$transid.'%" ';
}
if(!empty($_GET['transidAPI'])){
    $transidAPI = check_string($_GET['transidAPI']);
    $where .= ' AND `api_trans_id` LIKE "%'.$transidAPI.'%" ';
}
if(!empty($_GET['buyer'])){
    $buyer = check_string($_GET['buyer']);
    $where .= ' AND `buyer` = "'.$buyer.'" ';
}
if(!empty($_GET['product'])){
    $product = check_string($_GET['product']);
    $where .= ' AND `product_id` = "'.$product.'" ';
}
if(!empty($_GET['id_connect_api'])){
    $id_connect_api = check_string($_GET['id_connect_api']);
    $where .= ' AND `id_connect_api` = "'.$id_connect_api.'" ';
}
if(!empty($_GET['create_date'])){
    $create_date = check_string($_GET['create_date']);
    $create_date_1 = $create_date;
    $create_date_1 = explode(' - ', $create_date_1);
    if($create_date_1[0] != $create_date_1[1]){
        $create_date_1 = [$create_date_1[0].' 00:00:00', $create_date_1[1].' 23:59:59'];
        $where .= " AND `create_date` >= '".$create_date_1[0]."' AND `create_date` <= '".$create_date_1[1]."' ";
    }
}


$listOrder = $CMSNT->get_list(" SELECT * FROM `orders` WHERE $where ORDER BY id DESC LIMIT $from,$sotin1trang ");

?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Đơn hàng sản phẩm</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?=BASE_URL('admin/home');?>">Dashboard</a></li>
                        <li class="breadcrumb-item active">Đơn hàng sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-12 connectedSortable">
                    <div class="card card-primary card-outline">
                        <div class="card-header ">
                            <h3 class="card-title">
                                <i class="fas fa-history mr-1"></i>
                                DANH SÁCH ĐƠN MUA TÀI KHOẢN
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
                            <div class="row mb-2">
                                <div class="col-sm-6 mb-3">
                                    <a onclick="exportExcel()" href="javascript:;" type="button"
                                        class="btn btn-success btn-sm"><i class="fas fa-file-csv mr-1"></i>XUẤT
                                        EXCEL</a>
                                </div>
                                <div class="col-sm-12 mb-3">
                                    <form action="" name="formSearch" method="GET">
                                        <input type="hidden" name="module" value="admin">
                                        <input type="hidden" name="action" value="product-order">
                                        <div class="row">
                                            <input class="form-control col-sm-2 mb-2" value="<?=$account;?>"
                                                name="account" placeholder="Account trong đơn hàng">
                                            <input class="form-control col-sm-2 mb-2" value="<?=$transid;?>"
                                                name="transid" placeholder="Mã giao dịch hệ thống">
                                            <input class="form-control col-sm-2 mb-2" value="<?=$transidAPI;?>"
                                                name="transidAPI" placeholder="Mã giao dịch API">
                                            <input class="form-control col-sm-2 mb-2" value="<?=$buyer;?>" name="buyer"
                                                placeholder="ID Khách hàng">
                                            <input class="form-control col-sm-2 mb-2" value="<?=$username;?>" name="username"
                                                placeholder="Username">
                                            <select class="form-control select2bs4 col-sm-2 mb-2" name="product">
                                                <option value="">Sản phẩm</option>
                                                <?php foreach($CMSNT->get_list("SELECT * FROM `products` ") as $row):?>
                                                <option <?=$product == $row['id'] ? 'selected' : '';?>
                                                    value="<?=$row['id'];?>">
                                                    <?=$row['name'];?>
                                                </option>
                                                <?php endforeach?>
                                            </select>
                                            <select class="form-control  col-sm-2 mb-2" name="id_connect_api">
                                                <option value="">Server API</option>
                                                <?php foreach($CMSNT->get_list("SELECT * FROM `connect_api` ") as $row):?>
                                                <option <?=$id_connect_api == $row['id'] ? 'selected' : '';?>
                                                    value="<?=$row['id'];?>">
                                                    <?=$row['domain'];?>
                                                </option>
                                                <?php endforeach?>
                                            </select>
                                            <div class="form-group col-sm-2 mb-2">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">
                                                            <i class="far fa-calendar-alt"></i>
                                                        </span>
                                                    </div>
                                                    <input type="text" name="create_date" value="<?=$create_date;?>"
                                                        class="form-control float-right" id="reservationtime">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 mb-2">
                                                <button type="submit" name="submit" value="filter"
                                                    class="btn btn-warning"><i class="fa fa-search"></i>
                                                    Tìm kiếm
                                                </button>
                                                <a class="btn btn-danger"
                                                    href="<?=BASE_URL('index.php?module=admin&action=product-order');?>"><i
                                                        class="fa fa-trash"></i>
                                                    Bỏ lọc
                                                </a>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="table-responsive p-0">
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Khách hàng</th>
                                            <th>Đơn hàng</th>
                                            <th>Thời gian</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 0; foreach ($listOrder as $row) {?>
                                        <tr>
                                            <td>
                                                <ul>
                                                    <li>Username: <b><a
                                                                href="<?=base_url('admin/user-edit/'.$row['buyer']);?>"><?=getRowRealtime("users", $row['buyer'], "username");?></a>
                                                            (<?=__($row['buyer']);?>)</b></li>
                                                    <li>Money: <b
                                                            style="color: red;"><?=format_currency(getRowRealtime("users", $row['buyer'], "money"));?></b>
                                                    </li>
                                                    <li>Total money:
                                                        <b><?=format_currency(getRowRealtime("users", $row['buyer'], "total_money"));?></b>
                                                    </li>
                                                    <li>Email:
                                                        <b><?=getRowRealtime("users", $row['buyer'], "email");?></b>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>Mã giao dịch: <b>#<?=$row['trans_id'];?></b></li>
                                                    <li>Mã giao dịch API (nếu có): <b>#<?=$row['api_trans_id'];?></b>
                                                    </li>
                                                    <li>Server API (nếu có): <a
                                                            href="<?=getRowRealtime('connect_api', $row['id_connect_api'], 'domain');?>"
                                                            target="_blank"><?=$row['id_connect_api'] != 0 ? getRowRealtime('connect_api', $row['id_connect_api'], 'domain') : '';?></a>
                                                    </li>
                                                    <li>Sản phẩm:

                                                        <b><?=$row['name'] == NULL ? getRowRealtime("products", $row['product_id'], 'name') : $row['name'];?></b>

                                                    </li>
                                                    <li>Số lượng: <b
                                                            style="color:blue;"><?=format_cash($row['amount']);?></b>
                                                    </li>
                                                    <li>Thanh toán: <b
                                                            style="color:red;"><?=format_currency($row['pay']);?></b>
                                                    </li>
                                                    <li>Giá vốn: <b
                                                            style="color:red;"><?= format_currency($row['cost']); ?></b>
                                                        -
                                                        Lãi: <b
                                                            style="color:green;"><?= format_currency($row['pay']-$row['cost']); ?></b>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><?=$row['create_date'];?></td>
                                            <td>
 
                                                <button type="button" onclick="showAccounts(`<?=$row['trans_id'];?>`)"
                                                    class="btn btn-primary btn-sm "> Xem thêm</button>
                                                <?php if($row['refund'] == 0):?>
                                                <button type="button" onclick="confirmRefund(`<?=$row['id'];?>`, `<?=$row['trans_id'];?>`)" class="btn btn-danger btn-sm">Hoàn tiền</button>
                                                <?php else:?>
                                                <button type="button" disabled class="btn btn-danger btn-sm">Đã hoàn
                                                    tiền</button>
                                                <?php endif?>
                                            </td>
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="7">
                                            <div class="float-right">
                                                <?=__('Đơn hàng:');?>
                                                <strong><?=format_cash($CMSNT->get_row(" SELECT COUNT(id) FROM `orders` WHERE $where ")['COUNT(id)']);?></strong>
                                                |
                                                <?=__('Doanh thu:');?>
                                                <strong
                                                    style="color:red;"><?=format_currency($CMSNT->get_row(" SELECT SUM(`pay`) FROM `orders` WHERE $where ")['SUM(`pay`)']);?></strong>
                                                | <?=__('Lợi nhuận:');?>
                                                <strong
                                                    style="color:blue;"><?=format_currency($CMSNT->get_row(" SELECT SUM(`pay`) FROM `orders` WHERE $where ")['SUM(`pay`)']-$CMSNT->get_row(" SELECT SUM(`cost`) FROM `orders` WHERE $where ")['SUM(`cost`)']);?></strong>
                                            </div>
                                        </td>
                                    </tr>
                                </tfoot>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-5">

                                </div>
                                <div class="col-sm-12 col-md-7">
                                    <?php
                                $total = $CMSNT->num_rows(" SELECT * FROM `orders` WHERE $where ORDER BY id DESC ");
                                if ($total > $sotin1trang){echo '<center>' . pagination(base_url("index.php?module=admin&action=product-order&transid=$transid&transidAPI=$transidAPI&buyer=$buyer&product=$product&id_connect_api=$id_connect_api&create_date=$create_date&account=$account&username=$username&"), $from, $total, $sotin1trang) . '</center>';}?>
                                </div>
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
<div class="modal fade" id="modalAccounts" style="display: none;">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tài khoản đơn hàng</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <textarea class="form-control" id="coypyBox" rows="20" readonly></textarea>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary copy" onclick="copy()"
                    data-clipboard-target="#coypyBox">Sao chép</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

 
function confirmRefund(id, transid){
    cuteAlert({
        type: "question",
        title: "CẢNH BÁO",
        message: "Hệ thống sẽ hoàn lại toàn bộ số tiền của đơn hàng <b>#" + transid + "</b> sau khi bạn nhấn Đồng Ý",
        confirmText: "<?=__('Đồng Ý');?>",
        cancelText: "<?=__('Hủy');?>"
    }).then((e) => {
        if (e) {
            $.ajax({
                url: "<?=BASE_URL("ajaxs/admin/update.php");?>",
                method: "POST",
                dataType: "JSON",
                data: {
                    action: "refundOrder",
                    id: id,
                    transid: transid
                },
                success: function(respone) {
                    if (respone.status == 'success') {
                        cuteToast({
                            type: "success",
                            message: respone.msg,
                            timer: 5000
                        });
                        setTimeout(function() {
                            location.reload();
                        }, 3000);
                       
                    } else {
                        cuteAlert({
                            type: "error",
                            title: "Error",
                            message: respone.msg,
                            buttonText: "Okay"
                        });
                    }
                },
                error: function() {
                    alert(html(response));
                    location.reload();
                }
            });
        }
    })
}

function exportExcel() {
    cuteAlert({
        type: "question",
        title: "CẢNH BÁO",
        message: "Hệ thống sẽ tải về dữ liệu đơn hàng nếu bạn xác nhận Đồng Ý",
        confirmText: "<?=__('Đồng Ý');?>",
        cancelText: "<?=__('Hủy');?>"
    }).then((e) => {
        if (e) {
            $.ajax({
                url: "<?=BASE_URL("ajaxs/admin/exportExcel.php");?>",
                method: "POST",
                dataType: "JSON",
                data: {
                    type: "product-order"
                },
                success: function(respone) {
                    if (respone.status == 'success') {
                        cuteToast({
                            type: "success",
                            message: respone.msg,
                            timer: 5000
                        });
                        downloadCSV(respone.filename, respone.accounts);
                    } else {
                        cuteAlert({
                            type: "error",
                            title: "Error",
                            message: respone.msg,
                            buttonText: "Okay"
                        });
                    }
                },
                error: function() {
                    alert(html(response));
                    location.reload();
                }
            });
        }
    })
}

function downloadCSV(filename, text) {
    var element = document.createElement('a');
    element.setAttribute('href', 'data:text/csv;charset=utf-8,' + encodeURIComponent(text));
    element.setAttribute('download', filename);
    element.style.display = 'none';
    document.body.appendChild(element);
    element.click();
    document.body.removeChild(element);
}
</script>

<script type="text/javascript">
$(function() {
    $('#datatable').DataTable();
});
</script>
<script type="text/javascript">
function showAccounts(trans_id) {
    $.ajax({
        url: "<?=base_url('ajaxs/admin/showAccounts.php');?>",
        method: "POST",
        data: {
            trans_id: trans_id
        },
        success: function(respone) {
            $('#modalAccounts').modal();
            $('#coypyBox').val(respone);
        }
    });
}
</script>
<script>
new ClipboardJS(".copy");

function copy() {
    cuteToast({
        type: "success",
        message: "Đã sao chép vào bộ nhớ tạm",
        timer: 5000
    });
}
</script>
<script>
$(function() {
    $('#reservationtime').daterangepicker({
        locale: {
            format: 'YYYY/MM/DD/'
        }
    })

    //Date picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });
});
</script>