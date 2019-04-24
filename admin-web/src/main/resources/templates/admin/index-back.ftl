<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${sitename} | 后台</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${base}/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${base}/libs/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${base}/libs/ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${base}/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${base}/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${base}/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="${base}/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="${base}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="${base}/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="${base}/plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="${base}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${base}/plugins/datatables/dataTables.bootstrap.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="${base}/plugins/select2/select2.min.css">


    <link rel="stylesheet" href="${base}/dist/css/common.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${base}/libs/html5shiv/js/html5shiv.min.js"></script>
    <script src="${base}/libs/respond/js/respond.min.js"></script>
    <![endif]-->

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">${sitename}</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>${sitename}</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="hidden-xs">admin</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${base}/dist/img/user2-160x160.jpg" class="img-circle"
                                     alt="User Image">

                                <p>
                                    admin
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">

                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="${base}/user/logout" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" id="main_sidebar">

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="treeview" v-for="menu in menus">

                    <a href="#">
                        <i class="fa fa-laptop"></i>
                        <span>{{menu.name}}</span>
                        <span class="pull-right-container">
                              <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>

                    <ul class="treeview-menu menu-open" style="display: block;">
                        <li v-for="sub_menu in menu.subs">
                            <a href="#" @click="switch_page(sub_menu.page,sub_menu.name,$event)"><i
                                    class="fa fa-circle-o"></i>{{sub_menu.name}}</a>
                        </li>
                    </ul>

                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" id="main_content">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Dashboard
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            welcome
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
        </div>
        <strong>Copyright &copy; 2015-2017 ${sitename}.</strong> All rights reserved.
    </footer>

</div>
<!-- ./wrapper -->

<script type="text/javascript">
    var base = "${base}";
    if (!String.prototype.startsWith) {
        String.prototype.startsWith = function (searchString, position) {
            position = position || 0;
            return this.indexOf(searchString, position) === position;
        };
    }
</script>
<!-- jQuery 2.2.3 -->
<script src="${base}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${base}/libs/jquery-ui/js/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="${base}/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="${base}/libs/raphael/js/raphael-min.js"></script>
<script src="${base}/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="${base}/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${base}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${base}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${base}/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="${base}/libs/moment.js/js/moment.min.js"></script>
<script src="${base}/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${base}/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${base}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${base}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${base}/plugins/fastclick/fastclick.js"></script>
<!-- DataTables -->
<script src="${base}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${base}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${base}/plugins/datatables/datetime.js"></script>
<!-- Select2 -->
<script src="${base}/plugins/select2/select2.full.min.js"></script>
<!-- Echarts3 -->
<script src="${base}/plugins/echarts/echarts.min.js"></script>

<!-- AdminLTE App -->
<#--<script src="${base}/dist/js/app.min.js"></script>-->
<script src="${base}/dist/js/app.js"></script>
<!-- custom -->
<script src="${base}/libs/layer3/layer.js"></script>
<script src="${base}/vue2/vue.js"></script>
<script src="${base}/admin/common.js"></script>
<script src="${base}/admin/adminlte_main.js"></script>


</body>
</html>


