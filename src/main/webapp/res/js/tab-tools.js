/**
 * Created by Administrator on 2017/11/7.
 */
var TabTools = {
    // tab 内容刷新
    refreshTab: function refreshTab(tabsObj, cfg) {
        var refresh_tab = cfg.tabTitle ? tabsObj.tabs('getTab', cfg.tabTitle) : tabsObj.tabs('getSelected');
        if (refresh_tab && refresh_tab.find('iframe').length > 0) {
            var _refresh_ifram = refresh_tab.find('iframe')[0];
            var refresh_url = cfg.url ? cfg.url : _refresh_ifram.src;
            _refresh_ifram.contentWindow.location.href = refresh_url;
        }
    },
    // tabMEnu
    tabMenuControl: function (tabsObj, menu, type) {
        var allTabs = tabsObj.tabs("tabs");
        var allTabTitle = [];
        $.each(allTabs, function (i, n) {
            var opt = $(n).panel("options");
            if (opt.closable) {
                allTabTitle.push(opt.title);
            }
        });
        var curTabTitle = $(menu).data("tabTitle");
        switch (type) {
            case 1:
                //关闭当前
                tabsObj.tabs("close", curTabTitle);
                return false;
                break;
            case 2:
                //关闭其他
                for (var i = 0; i < allTabTitle.length; i++) {
                    if (curTabTitle != allTabTitle[i]) {
                        tabsObj.tabs("close", allTabTitle[i]);
                    }
                }
                tabsObj.tabs("select", curTabTitle);
                break;
            case 3:
                //关闭所有
                for (var i = 0; i < allTabTitle.length; i++) {
                    tabsObj.tabs("close", allTabTitle[i]);
                }
                break;
            case 4:
                // 浏览器新窗口打开 tab
                var tab = tabsObj.tabs("getTab",curTabTitle);
                var targetUrl = $(tab).find("iframe").first().attr("src")
                window.open(targetUrl,"_target");
                break;
        }
    },
    // tab 增加 控制
    control: function (url, queryParams, title,iconCls) {
        var that = this;
        var tabsControl = $('#tabsControl');
        if (!tabsControl.hasClass("easyui-tabs")) {
            tabsControl.tabs({
                fit: true,
                border: false,

                //为其附加鼠标右键事件
                onContextMenu: function (e, title, index) {
                    //该方法通知浏览器不要执行与此事件关联的默认动作
                    //即屏蔽了浏览器在tab页上的鼠标右键事件
                    e.preventDefault();
                    var mm = $("#tabsMenu");
                    //显示右键菜单
                    mm.menu("show", {
                        top: e.pageY,
                        left: e.pageX
                    }).data("tabTitle", title);
                    //为右键菜单选项绑定事件
                    mm.menu({
                        onClick: function (item) {
                            that.tabMenuControl(tabsControl, this, item.name);
                        }
                    });
                }

            });
        }
        if (tabsControl.tabs("exists", title)) {
            tabsControl.tabs("select", title);
            that.refreshTab(tabsControl, {tabTitle: title, url: url});
        } else {

            if (url) {
                var content = '<iframe   frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
            } else {
                var content = '未实现';
            }
            tabsControl.tabs('add', {
                title: title,
                content: content,
                fit: true,
                iconCls:iconCls,
                /* cache:false,*/
                closable: true
            });
        }

    }


}