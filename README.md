my_CURD
===

### 简介
表格型内容管理系统，内置代码生成器，可用于业务逻辑快速开发。 

### 特点 | Advantages  
- **轻巧**：Jfinal、Easyui、Mysql
- **清晰**：模块划分清晰，每个模块下大致分为model、controller、service 子包 和 相应页面。
- **便捷**：前后端封装（弹窗、Tab切换、富文本编辑、markdown编辑、数据筛选过滤、excel 导入导出、数据处理等）；页面级别权限管理、灵活的代码生成器。

### 文档 | Documentation
[代码生成器，一键生成model、controller、view](https://note.youdao.com/share/?id=0842cb7396c5c8d2f0593e16496364b8&type=note#/)

### 快速开始 | Get Started
- `git clone https://github.com/qinyou/my_curd`
- 使用`idea` or `eclipse`打开项目
- 等待 maven构建完成
- 配置 `config.properties` 文件里的数据库连接信息
- 将 `my_curd.sql` 导入数据库
- 启动项目，用户名：admin 密码：111111 或者 123456
- 注意修改log4j.properties 中配置的 邮箱账号（系统异常时通过该配置接收日志卡片）
 
### 依赖 | Dependencies
- jFinal3.4、druid、fastjson、log4j、 poi、httpcomponents、jodd、Freemarker、pinyin4j、javax.mail等
- easyui1.5.4.5、pure.css、ckeditor、layer、simplemde等

### 预览 | Preview 
![登录](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/login.png)
![菜单](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png)
![角色](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/role.png)
![组织](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/org.png)
![用户](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/user.png)
![文件管理](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/file.png)
![代码生成器](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/codegen.png)
![ckeditor5](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/ck5.png)
![小说阅读下载](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/novel.png)
