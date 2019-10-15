
## my_curd 

不够漂亮高大上，足够轻量清纯，分分钟掌控不是事，为所欲为。

### 系统介绍 

- 菜单级、按钮级权限控制。 自定义注解 + 拦截器 + freemarker宏标签 设计，清晰明确，容易掌控。 
- 代码生成器。 单表、主从表，增删改查导入导出 功能一键生成，拦截器动态生成sql where条件。
- 多配色风格。保持 easyui 方便易用的前提下，美化风格，数据型应用非常合适。
- 系统推送通知。  websocket主动，分角色推送通知，通知存库，未读已读 。
- 整合activiti 实现 业务表数据 流程审批 。业务表 结合代码生成器编写少量代码，审批流已测支持 （用户任务 + 排他网关 + 监听器 + 申请表单调整）简单流转功能，其它 BPMN组件 (例如 并行网关、包括网关、service task等）可能不支持，慎用。    

### 系统部署 
   
1. 已安装 jdk8(+)，maven，mysql5.7 数据库。
2. 创建数据库 my_curd, 将 db/my_curd.sql 导入； 创建数据库 my_curd_oa,将 my_curd_oa.sql 导入，
修改 resoureces/config-dev.txt 中 相关 数据源连接信息。
3. 项目根目录下 mvn clean package, 进入 target/my_curd-release/my_curd, 使用 start.bat 或 start.sh 启动项目
4. 访问 http://localhost/dashboard, 账号 admin, 密码 123456 或 111111
5. 更多测试账号 进入系统查看，默认密码为 123456. 

### 技术方案   
 
- JFinal4.6 & Mysql5.7
- Activiti5.22 
- Easypoi3.2.0
- Easyui1.8.5、pure.css、layer

### 系统截图    

#### 菜单权限  
![菜单管理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png "menu.png")

#### 代码生成器  
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/gen.png "gen.png")

#### 生成一对多 增删改查导入导出  
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/1tn.png "1tn.png")

####  业务表数据流程审批  
![新建流程](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/process1.png "process1.png")
![流程列表](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/process.png "process.png")
![任务办理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task1.png "task1.png")
![候选任务认领](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task2.png "task2.png")
![任务转办](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/task3.png "task3.png")





