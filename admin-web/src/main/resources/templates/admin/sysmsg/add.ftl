<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>dialog</title>
<#include "../../layout/dialog_header.ftl">
    <link rel="stylesheet" href="/assets/adminlte/plugins/laydate/theme/default/laydate.css">

</head>
<body class="hold-transition skin-blue">

<section class="content form-horizontal" id="main_div">
    <form class="form-horizontal">
        <div class="box-body">
            <div class="form-group">
                <label class="col-xs-2 control-label">标题</label>
                <div class="col-xs-9">
                    <input type="hidden" class="form-control" id="txt_id" v-model="itemdata.id">
                    <input type="text" class="form-control" id="title" v-model="itemdata.title" placeholder="限制80字符以内">
                </div>
                <label class="col-xs-1 control-label  text-red">*</label>
            </div>
            <div class="form-group">
                <label class="col-xs-2 control-label">消息内容</label>
                <div class="col-xs-9">
                    <textarea type="text" class="form-control" style="height: 80px;" id="message" v-model="itemdata.message"  placeholder="限制200字符以内"></textarea>
                </div>
                <label class="col-xs-1 control-label  text-red">*</label>
            </div>

        </div>
        <div class="box-footer">
            <button type="button" v-on:click="save" class="btn btn-info pull-right btn-save">保存</button>
        </div>
    </form>

</section>

<#include "../../layout/dialog_footer.ftl">
<script src="/plugins/laydate/laydate.js"></script>
<script src="/admin/sysmsg/add.js"></script>

</body>
</html>


