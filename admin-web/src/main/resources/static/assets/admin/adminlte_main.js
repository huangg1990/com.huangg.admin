$(function () {
    var mainSidebar = new Vue({
        el: "#main_sidebar",
        data: {
            menus: menus_v
        },
        methods: {
            switch_page: function (path, menu_name) {
                swtichpage(path, menu_name);
            }
        },
        created: function () {
        },
        mounted: function () {
            if (localStorage.adminlte_lastmenu_page && localStorage.adminlte_lastmenu_name) {
                swtichpage(localStorage.adminlte_lastmenu_page, localStorage.adminlte_lastmenu_name);
            }
        }
    });
});


