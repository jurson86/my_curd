## my_curd - 不够漂亮高大上，足够轻量灵活，分分钟掌控不是事，为所欲为 :smile:

#### 功能模块
1. 菜单级、按钮级权限管理 （  自定义注解+拦截器 设计，清晰明确，没有复杂的概念    ）
2. 代码生成器 （ 单表、主从表，增删改查导入导出功能一键生成, 样板代码程序做 ）
3. 多配色风格（ easyui方便易用的前提下，美化风格，数据型应用非常合适 ）
4. 系统推送通知 ( websocket主动，分角色推送通知，通知存库，未读已读 ）

#### 系统环境
-  JDK8 及以上
-  mysql5.7
-  jfinal4.3 、freemarker、 easypoi3.2.0 、logback.....
-  easyui1.6.10 、 pure.css 、layer .....

#### 快速开始
1. 已安装 jdk，maven，mysql 数据库。
2. clone 本项目后解压缩, 将sql脚本导入数据库 并修改 resoureces/jdbc.properties 的数据库连接信息
3. 项目根目录下 mvn clean package, 进入 target/my_curd-release/my_curd, 使用 start.bat 或 start.sh 启动项目
4. 访问 http://localhost/dashboard, 账号 admin, 密码 123456 或 111111
5. 更多文档请看本项目Wiki, 因为项目足够简单，查看代码了解项目可能是更好的选择

#### 预览
##### 菜单权限
![菜单管理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png "menu.png")

##### 代码生成器
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/gen.png "gen.png")

##### 生成 一对多 增删改查导入导出
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/1tn.png "1tn.png")





