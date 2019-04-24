function processData(data) {
    data.valid_start=data.valid_start!=null? (new Date(data.valid_start)).Format("yyyy-MM-dd hh:mm:ss"):"";
    data.valid_end=data.valid_end!=null? (new Date(data.valid_end)).Format("yyyy-MM-dd hh:mm:ss"):"";

    return data;
}
var vue = new Vue({

    el: "#main_div",
    data: function () {
        if (!getUrlParameter("id")) {
            return {
                itemdata: {test: 1}
            };
        } else {
            return {itemdata: {}};
        }
    },

    methods: {
        save: function () {
            $(".btn-save").attr("disabled",true);
            var id = $("#txt_id").val();
            var message = $("#message").val();
            var title = $("#title").val();
            if (title == undefined || title.length <= 0) {
                layer.alert("标题不能为空！");
                $(".btn-save").attr("disabled",false);
                return
            }
            if (message == undefined || message.length <= 0) {
                layer.alert("消息体不能为空！");
                $(".btn-save").attr("disabled",false);
                return
            }
            $.post("/sysmsg/addup_sysmsg", {
                id: id,
                title: title,
                message: message,
                ordernumber:$("#ordernumber").val(),
                valid_start: $("#valid_start").val(),
                valid_end: $("#valid_end").val(),
            }, function (rs) {
                if (rs.msg == "ok") {
                    refresh();   //  dialog 下不能用 , 因为取不到左侧菜单
                    //gomenu2("/message/unsubfcmtopiclist");
                    parent.layer.closeAll();
                } else {
                    $(".btn-save").attr("disabled",false);
                    layer.msg(rs.msg);
                }
            });
        },
        htmlInit: function () {
            //同时绑定多个
            lay('.input_laydate').each(function () {
                laydate.render({
                    elem: this
                    , type: 'datetime'
                    , min: 0
                    , max: 30
                });
            });

            var id = getUrlParameter("id");
            if (!id) {
                return;
            }
            //id查找对象，
            $.post("/sysmsg/getsysmsg", {v: new Date().getTime(), id: id},
                function (rs) {
                    if (rs.ok) {
                        vue.itemdata = processData(rs.data);
                    }
                });
        }
    },
    created: function () {
        // this.sendmsg();
    },
    mounted: function () {
        this.htmlInit();
    }
});