<@compress single_line=true><!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>用户登录</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge,chrome=1">
    <meta content=always name=referrer>
    <link rel="shortcut icon" href="${ctx!}/static/image/favicon.ico"/>
    <link rel="stylesheet" href="${ctx!}/static/plugins/purecss/pure-min.css">
    <link rel="stylesheet" href="${ctx!}/static/plugins/magic-check/magic-check.css">
    <style>
        body, html {
            width: 100%;
            height: 100%;
            font-size: 14px;
            background-color: #f7f9fb;
        }
        #container, #output {
            width: 100%;
            height: 100%;
        }
        .card-wrapper {
            width: 360px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -360px 0 0 -180px;
        }
        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            border-color: transparent;
            box-shadow: 0 4px 8px rgba(0, 0, 0, .05);

        }

        .card.fat {
            padding: 10px;
        }

        .brand {
            width: 90px;
            height: 90px;
            overflow: hidden;
            border-radius: 50%;
            margin: 40px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, .05);
            position: relative;
            z-index: 1;
        }

        .brand img {
            width: 100%;
        }

        .card-body {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 1.25rem;
        }

        .pure-form label {
            margin-top: 16px;
        }

        .pure-form button {
            margin-top: 16px;
            font-size: 115%;
        }

        .warning-msg {
            color: #ff0000;
            font-weight: bold;
            padding-left: 10px;
        }

        .error-msg {
            color: #ff0000;
            font-size: 14px;
        }

        .hiddenCls {
            display: none;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="output">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="https://pic.52112.com/icon/256/20180730/19881/1271773.png" alt="logo">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <form class="pure-form pure-form-stacked" action="${ctx!}/login/action" method="post">
                            <fieldset>
                                <legend>用户登录</legend>
                                <label for="email">用户名</label>
                                <input type="text" name="username" class="pure-input-1" placeholder="用户名"
                                       value="${username!}" tabindex="1">
                                <#--<span class="pure-form-message">This is a required field.</span>-->
                                <label for="password">密码</label>
                                <input type="password" name="password" class="pure-input-1" placeholder="密码"
                                       tabindex="2">
                                <div class="error-msg">${errMsg!}</div>
                                <input id="remember" name="remember" class="magic-checkbox" type="checkbox">
                                <label for="remember"
                                       onmouseenter="document.getElementsByClassName('warning-msg')[0].classList.remove('hiddenCls');"
                                       onmouseleave="document.getElementsByClassName('warning-msg')[0].classList.add('hiddenCls');">
                                    记住我(24h)<span class="warning-msg hiddenCls">公共电脑慎用此功能!</span>
                                </label>
                                <button type="submit" class="pure-button pure-input-1 pure-button-primary button-large">
                                    登录
                                </button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
    </div>
</div>
<script src="${ctx!}/static/plugins/easyui1.6.10/jquery.min.js"></script>
<script src="${ctx!}/static/plugins/vector.js"></script>
<script>
    /*不被 iframe 嵌套, 如果被嵌套，父页面跳转到登录页面*/
    if (top.location != self.location) {
        top.location = "${ctx!}/login";
    }
    $(function () {
        Victor("container", "output");
    });
</script>
</body>
</html>
</@compress>