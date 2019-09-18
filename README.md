## my_curd - 不够漂亮高大上，足够轻量灵活，分分钟掌控不是事，为所欲为 :smile:

#### 功能模块
1. 菜单级、按钮级权限管理 （  自定义注解+拦截器 设计，清晰明确，没有复杂的概念    ）
2. 代码生成器 （ 单表、主从表，增删改查导入导出功能一键生成, 样板代码程序做 ）
3. 多配色风格（ easyui方便易用的前提下，美化风格，数据型应用非常合适 ）
4. 系统推送通知 ( websocket主动，分角色推送通知，通知存库，未读已读 ）
5. 整合activiti 实现 业务表数据 流程审批 (业务表 结合代码生成器编写少量代码)   
##### 注意：审批流已测支持 （用户任务 + 排他网关 + 监听器 + 申请表单调整）简单流转功能，其它 BPMN组件 (例如 并行网关、包括网关、service task等）可能不支持，慎用。    

#### 系统环境
-  JDK8 及以上
-  mysql5.7
-  jfinal4.5 、activiti5.22 、freemarker、 easypoi3.2.0 、logback.....
-  easyui1.8.5 、 pure.css 、layer .....

#### 快速开始
1. 已安装 jdk，maven，mysql 数据库。
2. 创建数据库 my_curd, 将 db/my_curd.sql 导入； 创建数据库 my_curd_oa,将 my_curd_oa.sql 导入，
修改 resoureces/config-dev.txt 中 相关 数据源连接信息。
3. 项目根目录下 mvn clean package, 进入 target/my_curd-release/my_curd, 使用 start.bat 或 start.sh 启动项目
4. 访问 http://localhost/dashboard, 账号 admin, 密码 123456 或 111111
5. 更多文档请看本项目Wiki（查看代码了解项目可能是更好的选择）。

#### 预览
##### 菜单权限
![菜单管理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png "menu.png")

##### 代码生成器
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/gen.png "gen.png")

##### 生成 一对多 增删改查导入导出
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/1tn.png "1tn.png")

##### 业务表数据流程审批
![新建流程](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/process1.png "process1.png")
![流程列表](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/process.png "process.png")
![任务办理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task1.png "task1.png")
![候选任务认领](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task2.png "task2.png")
![任务转办](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task3.png "task3.png")





