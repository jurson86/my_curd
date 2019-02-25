
<p align="center" style='font-weight:bold'>
    <img src="https://images.gitee.com/uploads/images/2019/0213/221706_3326cf26_608004.png" width="120">
    <br/>
    my_curd
    <p align="center">
       后台权限管理系统，内置代码生成器，代码量少，简单美观。
    </p>    
</p>

#### 项目介绍
基于 jfinal mysql easyui 快速开发 后台脚手架。 
1. 权限管理（菜单级 按钮级）
2. 代码生成器 （单表、主从表， model、controller、页面，增删改查导入导出）
3. 前台多主题配色  （单个css全局替换配色 ）
4. 基于 websocket 系统通知


#### 系统环境
-  JDK8 及以上
-  mysql5.7
-  jfinal3.6 、freemarker、 easypoi3.2.0 、logback.....
-  easyui1.6.10 、 pure.css 、layer .....

#### 快速开始
1. 已安装 jdk，maven，mysql 数据库。
2. 创建数据库 my_curd,并将 db 目录下 的 sql 脚本 导入数据库
3. clone 本项目后解压缩, 修改 resoureces 下 jdbc.properties 中的数据库连接信息
4. 项目根目录下 mvn clean package, 进入 target/my_curd-release/my_curd, 使用 start.bat 或 start.sh 启动项目
5. 访问 http://localhost/dashboard, 账号 admin, 密码 123456 或 111111
6. 更多文档请看本项目Wiki, 因为项目足够简单，查看代码了解项目可能是更好的选择

#### 开发环境 推荐（支持 class 热加载）
-  IDEA + JRebel + Tomcat     (写大量页面类应用)
-  Eclipse + jfinal-undertow  (数据接口类应用)

#### 预览 
![菜单](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png "menu.png")
![角色](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/role.png "role.png")
![用户](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/user.png "user.png")
![机构](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/org.png "org.png")
![单表生产](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/single.png "single.png")
![一对多表](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/otm.png "otm.png")
![访问日志](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/log.png "log.png")


