</div>

<script type="text/javascript">
    var base = "";
    if (!String.prototype.startsWith) {
        String.prototype.startsWith = function (searchString, position) {
            position = position || 0;
            return this.indexOf(searchString, position) === position;
        };
    }
</script>
<!-- jQuery 2.2.3 -->
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/libs/jquery-ui/js/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="/libs/raphael/js/raphael-min.js"></script>
<script src="/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="/libs/moment.js/js/moment.min.js"></script>
<script src="/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/plugins/fastclick/fastclick.js"></script>
<!-- DataTables -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="/plugins/datatables/datetime.js"></script>
<!-- Select2 -->
<script src="/plugins/select2/select2.full.min.js"></script>

<!-- jQuery Fileupload -->
<link href="/plugins/jquery-file-upload/jquery.fileupload.css" rel="stylesheet">
<script src="/plugins/jquery-file-upload/jquery.ui.widget.js"></script>
<script src="/plugins/jquery-file-upload/jquery.iframe-transport.js"></script>
<script src="/plugins/jquery-file-upload/jquery.fileupload.js"></script>
<script src="/plugins/jquery-file-upload/upload-base.js"></script>

<!-- AdminLTE App -->
<script src="/dist/js/app.min.js"></script>
<!-- custom -->
<script src="/libs/layer3/layer.js"></script>
<script src="/vue2/vue.js"></script>
<script src="/js/common/common.js"></script>

