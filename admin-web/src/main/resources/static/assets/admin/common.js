// 全局变量
var menus_v = [
    {
        name: "统计面板",
        subs: [
            {name: "测试1", page: "/brand/admgr_test"},
            {name: "测试2", page: "/brand/admgr_prod"}
        ]
    }, {
        name: "消息管理",
        subs: [
            {name: "系统消息", page: "/admin/sysmsg/list"}
        ]
    }
];


/**
 *  获取当前的 url 的值
 */
function getCurrentPath() {
    var idx1 = getCurrentIdx1();
    var idx2 = getCurrentIdx2();
    if (idx1 == -1 || idx2 == -1) {
        return "";
    }
    return menus_v[idx1].subs[idx2].page;
}


function getCurrentIdx1() {
    if (localStorage.curridx1) {
        return localStorage.curridx1;
    }
    return -1;
}

function getCurrentIdx2() {
    if (localStorage.curridx2) {
        return localStorage.curridx2;
    }
    return -1;
}


/**
 *   比如    swtichpage(  "/coinuser/userlist"  , "用户管理 ")
 *
 * @param path
 * @param menu_name
 * @param event
 */
function swtichpage(path, menu_name, pathparams) {

    if (localStorage) {
        localStorage.adminlte_lastmenu_page = path;
        localStorage.adminlte_lastmenu_name = menu_name;
    }

    if (!path.startsWith("/"))
        path = "/" + path;
    path = base + path
    // if (console)
    //     console.info(path);

    if (parent.$("#main_content")) {
        parent.$("#main_content").load(path + "?" + pathparams);
    } else {
        $("#main_content").load(path + "?" + pathparams);

    }

    document.title = 'Admin - ' + menu_name;
    {
        //根据 target url 获取索引位置 .
        var path_idx1 = -1; //target
        var path_idx2 = -1; //target

        outer:
        {
            for (var i = 0; i < menus_v.length; i++) {
                path_idx1 = i;
                var item = menus_v[i];
                for (var j = 0; j < item.subs.length; j++) {
                    path_idx2 = j;
                    var page = item.subs[j].page;
                    var name = item.subs[j].name;
                    if (page == path) {
                        break outer;
                    }
                }
            }
        }


        var current_path = getCurrentPath();
        var current_idx1 = getCurrentIdx1();

        // current_path == "/adminlte/page"    // 这个时候是  找不到  idx2  没有被展示出来的情况.
        //如果当前的值跟即将跳转到   父级菜单不一样  .  就隐藏当前的值
        if (current_idx1 > 0 && (current_path && current_path.split("/")[3] != path.split("/")[3])) {
            // 如果 target  idex1   跟 current  idex1 是一样的,  就不用 slideUp () ,,,  这种情况是手动点击的情况 .
            if (current_idx1 != path_idx1) {
                // $("#main_sidebar").find(".treeview-menu.menu-open").slideUp(); // 不能去掉menu-open  , 要保持总是打开的状态 .
            }
            // $("#main_sidebar").find(".treeview-menu.menu-open").removeClass("menu-open");   // 不能去掉menu-open  , 要保持总是打开的状态 .
        }
        $("#main_sidebar").find(".treeview li").removeClass("active");

        if (path_idx1 >= 0 && path_idx2 >= 0) {

            // 对 li 添加active
            var li_parent = $("#main_sidebar").find(".treeview:eq('" + path_idx1 + "')");
            $(li_parent).addClass("active");
            //对ul 添加 menu-open  ,  并且 slideDown  ( 打开操作)
            // $(li_parent).find("ul").addClass("menu-open").slideDown();   // 不能去掉menu-open  , 要保持总是打开的状态 .
            $(li_parent).find("ul>li:eq('" + path_idx2 + "')").addClass("active");

            localStorage.curridx1 = path_idx1;
            localStorage.curridx2 = path_idx2;

        }
    }
}

/**
 *   从0开始  , 参考全局变量  menus_v
 * @param menu_idx1
 * @param menu_idx2
 */
function gomenu(menu_idx1, menu_idx2) {
    swtichpage(menus_v[menu_idx1].subs[menu_idx2].page, menus_v[menu_idx1].name);
}


function refresh() {
    debugger
    var menu_idx1 = getCurrentIdx1();
    var menu_idx2 = getCurrentIdx2();
    swtichpage(menus_v[menu_idx1].subs[menu_idx2].page, menus_v[menu_idx1].name);
}

/**
 *    根据指定的url跳转
 * @param  gopath  eg :    /testmodule/testpage
 * @param  params   eg:   userid=111&username=zhang
 */
function gomenu2(gopath, params) {

    debugger
    var path_idx1 = -1;
    var path_idx2 = -1;
    outer:
    {
        for (var i = 0; i < menus_v.length; i++) {
            path_idx1 = i;
            var item = menus_v[i];
            for (var j = 0; j < item.subs.length; j++) {
                path_idx2 = j;
                var page = item.subs[j].page;
                // var name = item.subs[j].name;
                if (page == gopath) {
                    break outer;
                }
            }
        }
    }
    if (path_idx1 == -1 || path_idx2 == -1) {
        console.error("no config url : " + gopath);
        return;
    }

    swtichpage(menus_v[path_idx1].subs[path_idx2].page, menus_v[path_idx1].name, params);

}


jQuery.fn.simulateClick = function () {
    return this.each(function () {
        if ('createEvent' in document) {
            var doc = this.ownerDocument,
                evt = doc.createEvent('MouseEvents');
            evt.initMouseEvent('click', true, true, doc.defaultView, 1, 0, 0, 0, 0, false, false, false, false, 0, null);
            this.dispatchEvent(evt);
        } else {
            this.click(); // IE Boss!
        }
    });
};

function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};

Date.prototype.addDays = function (days) {
    var dat = new Date(this.valueOf());
    dat.setDate(dat.getDate() + days);
    return dat;
}

Date.prototype.Format = function (fmt) {

    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

