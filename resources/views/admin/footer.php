<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}?>

<script type="text/javascript">
 $(function() {
    $('#datatable').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });
    $('#datatable1').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });
    $('#datatable2').DataTable({
        "lengthMenu": [[10, 50, 100, 500, 1000, 2000, 5000, 10000 -1], [10, 50, 100, 500, 1000, 2000, 5000, 10000, "All"]]
    });

});

$.ajax({
    url: "<?=BASE_URL('update.php');?>",
    type: "GET",
    dateType: "text",
    data: {},
    success: function(result) {

    }
});

$.ajax({
    url: "<?=BASE_URL('install.php');?>",
    type: "GET",
    dateType: "text",
    data: {},
    success: function(result) {

    }
});

// $.ajax({
//     url: "<?=BASE_URL('cron/cron.php');?>",
//     type: "GET",
//     dateType: "text",
//     data: {},
//     success: function(result) {

//     }
// });

</script>
<!-- <div id="autoload"></div>
<script type="text/javascript">
function autoload() {
    $.ajax({
        url: "<?=BASE_URL('cron/cron.php');?>",
        type: "GET",
        dateType: "text",
        data: {},
        success: function(result) {

        }
    });
}
setInterval(function() {
    $('#autoload').load(autoload());
}, 15000);
</script> -->
<footer class="main-footer">
    <div class="float-right d-none d-sm-inline">
        
        <div id="google_translate_element"></div>
        <script type="text/javascript">
        // <![CDATA[
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({
                pageLanguage: 'vi',
                layout: google.translate.TranslateElement.InlineLayout.SIMPLE
            }, 'google_translate_element');
        }
        // ]]>
        </script>
        <script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"
            type="text/javascript"></script>

    </div>
    <b>Copyright © </b> <b style="color:red;">2024</b> - <strong>Designed By <a
            href="https://www.facebook.com/phuchoang0681" target="_blank" class="chantrang">Nguyễn Hoàng Phúc</a></strong>
</footer>
</div>
<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "101939031161934");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v16.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<style>
    .chantrang{
        color: red;
    }
    html,body{
        cursor:url("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjac-SGqqBNOf8R-yQBGf8rXc_3Mko7Jk_Vf-3mtmVeE3EiU4oaRG-3lS1CqQ5XgWXpBspTaSriDXGF73L3m9V0c0K07iDq1r7XyLXpsEqU3VF2O6mT-gZkqsJimuxi8gLvOQtxhGXx8Y9a/s0/mouse-f1.png"), auto;
        
    }
	a:hover{
	    cursor:url("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjITCvg05WrPmBtw3wfCNDButQe1JVWYCtbJ07WNQ1Q_72Sf0PTOXRzt9H8OqryPkJrC7GmiHUJ0CwHje_VLV2Trr9cumn0Y6eMcFL77Z9fm4G4I3ZwLHu8I8kDUy9rkXjzH_v49SscqVYT/s0/mouse-f2.png"), auto;
	}
</style>

<!-- jQuery UI 1.11.4 -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>dist/js/pages/dashboard.js"></script>
<!-- ChartJS -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/chart.js/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>
 <!-- daterangepicker -->
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/moment/moment.min.js"></script>
<script src="<?=BASE_URL('public/AdminLTE3/');?>plugins/daterangepicker/daterangepicker.js"></script>

<?=$body['footer'];?>
</body>

</html>
 