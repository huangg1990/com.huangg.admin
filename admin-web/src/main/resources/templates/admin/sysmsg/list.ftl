<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>系统消息管理</h1>
</section>
<!-- Main content -->
<section class="content" id="main_div">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
            </div>
            <div class="box">
                <div class="box-header">
                    <div class="row">
                        <div class="col-md-2">
                            <button v-on:click="openiframe()" type="button" class="btn btn-block btn-primary"> ADD-系统消息</button>
                        </div>
                    </div>
                </div>

                <div class="box-body">
                    <table id="main_table" class="table table-hover table-bordered" cellspacing="0"   >
                    </table>
                </div>
            </div>
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->

<script src="${base}/admin/sysmsg/list.js"></script>
