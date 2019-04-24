var table;
var vue = new Vue({

    el: "#main_div",
    data: {
        //绑定数据
    },

    methods: {
        searchlist: function () {
            if (table) {
                table.draw();
            }
        },
        openiframe: function () {
            layer.open({
                title: "ADD-系统消息",
                type: 2,
                area: ['768px'],
                offset: '50px',
                content: '/adminlte/page/sysmsg/addup_sysmsg',
                success: function (layero, index) {
                    layer.iframeAuto(index);
                }
            });
        },
        htmlInit: function () {
            // 表格查询初始化
            $(document).ready(function () {
                table = $('#main_table').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ordering": false,
                    "info": true, // 共计多少条记录,左下角
                    "searching": false, // 搜索框 , 右上角
                    "lengthMenu": [[10, 20, 50, 100], [10, 20, 50, 100]], //pagesize , showpagesize
                    "pageLength": 10, //默认选中上面的一个pagesize
                    // "bLengthChange": false,// 每页显示多少条记录下拉列表, 左上角.
                    // "scrollY": 200,  // 垂直滚动
                    "scrollX": true, //水平滚动
                    "ajax": {
                        "url": "/sysmsg/listdata?v=" + new Date().getTime(),
                        "type": "POST",
                        "data": function (d) {
                            d.test = 1; //未上线的
                        }
                    },
                    "columns": [
                        {
                            "data": "title", "title": "标题", "render": function (data, type, row, meta) {
                                if (data.length > 30) {
                                    return data.substr(0, 27) + "...";
                                }
                                return data;
                            }
                        },
                        {
                            "data": "status", "title": "状态", "render": function (data, type, row, meta) {
                                switch (data) {
                                    case -1:  return "已下线";
                                    case 0:  return "正常";
                                    default:  return "--";
                                }
                            }
                        },
                        {
                            "data": "create_time", "title": "创建时间", "render":
                                function (data, type, row, meta) {
                                    return (new Date(data)).Format("yyyy-MM-dd hh:mm:ss");
                                }
                        },
                        {
                            "data": "id",
                            "title": "操作",
                            "render": function (id, type, row, meta) {
                                var updateHtml="";
                                if (row.status == 0 ) {
                                    updateHtml = updateHtml + "<button id=\"" + id + "\"  type =\"button\" class=\"item_btn_update btn btn-inline btn-info btn-sm\"  >编辑</button>";
                                    updateHtml = updateHtml + " <button id=\"" + id + "\"  token='" + row.token + "' type =\"button\" class=\"item_btn_tosqs btn btn-inline btn-danger btn-sm\" msg='删除' >下线</button>";
                                }
                                return updateHtml;
                            }
                        }
                    ]
                });

                //详情
                $('#main_table tbody').on('click', '.item_btn_update', function () {
                    var id = $(this).attr("id");
                    if (!id) {
                        return true;
                    }
                    layer.open({
                        title: "查看-编辑",
                        type: 2,
                        area: ['768px'],
                        offset: '50px',
                        content: '/adminlte/page/sysmsg/addup_sysmsg?id=' + id,
                        success: function (layero, index) {
                            layer.iframeAuto(index);
                        }
                    });

                });

                //删除
                $('#main_table tbody').on('click', '.item_btn_tosqs', function () {
                    var btn_elem=$(this);
                    btn_elem.attr("disabled",true);
                    var id = $(this).attr("id");
                    var token = $(this).attr("token");
                    if (!id) {
                        return true;
                    }
                    layer.confirm('您确【下线】？', {
                        btn: ['下线', '算了']
                    }, function () {
                        $.post("/sysmsg/upd_sysmsg?v=" + new Date().getTime(), {
                                id: id
                            },
                            function (data) {
                                if (data.msg == "ok") {
                                    layer.msg('操作成功!', {time: 1000});
                                }
                                if (table) {
                                    table.draw();
                                    layer.closeAll();
                                }
                            });
                    }, function () {
                        btn_elem.attr("disabled",false);
                        layer.msg("取消了", {time: 1000});
                    });
                });
            });
        }
    },
    created: function () {
        this.searchlist();
    },
    mounted: function () {
        this.htmlInit();
    }
});







