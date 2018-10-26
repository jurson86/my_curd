my_CURD
===
[English README](https://github.com/qinyou/my_curd/blob/master/EN_README.md)

### 简介
简单简洁的后台管理系统。 

前台页面 美观和谐，风格统一，控件开发方便，页面使用流畅。

权限管理、代码生成器、常用的工具封装，业务快速开发方便。 

如果只是想做一个小型的运营后台，想尽量快的开发出相对美观流畅的后台系统，本项目会是个不错的选择。 

### 特点
- **轻巧**：Jfinal、Easyui、Mysql
- **清晰**：项目结构清晰，注释完善。多模块下分model、controller、service 子包 和 相应页面。
- **便捷**：前后端封装（左右布局多Tab、弹窗、数据过滤、excel 导入导出、富文本、markdown、等）, 功能页面级别权限管理、灵活的代码生成器。

### 文档 
[代码生成器，一键生成model、controller、view](https://note.youdao.com/share/?id=0842cb7396c5c8d2f0593e16496364b8&type=note#/)

### 快速开始
- `git clone https://github.com/qinyou/my_curd`
- 使用`idea` or `eclipse`打开项目
- 等待 maven构建完成
- 配置 `config.properties` 文件里的数据库连接信息
- 将 `my_curd.sql` 导入数据库
- 启动项目，用户名：admin 密码：111111 或者 123456
- 注意修改log4j.properties 中配置的 邮箱账号（系统异常时通过该配置接收错误信息）
 
### 依赖
- jFinal3.5、druid、fastjson、log4j、 poi、httpcomponents、jodd、Freemarker、pinyin4j、javax.mail等
- easyui1.5.4.5、pure.css、ckeditor、layer、simplemde等 

### 接下来要做
- [ ] 手机端基础框架

### 预览
![登录](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/login.png)
![菜单](https://raw.githubusercontent.com/qinyou/my_curd/master/preview/menu.png)
