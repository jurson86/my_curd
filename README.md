### 基于JFinal3.2 和 Easyui11.5.3 实现的 权限管理系统
#### （页面级权限 ; 单表代码生成器）

1. 登录
![](preview_img/login.png)
2. 菜单 (权限管理)
![](preview_img/menu.png)
3. 角色
![](preview_img/role.png)
4. 用户
![](preview_img/user.png)
5. 组织机构
![](preview_img/org.png)
6. 任务
![](preview_img/task.png)
7. 系统日志
![](preview_img/log.png)
8. 文件管理
![](preview_img/file.png)
9. 字典管理
![](preview_img/dict.png)
10. druid 监控
![](preview_img/druid.png)
11. 代码生成器  
通过配置文件generator.properties，运行main 方法，一键生成 model、controller、view 代码，可实现单表的curd 操作（excel导入导出可选）
```properties
# 基础包名
basePackageName=com.hxkj
# 模块名
moduleName=bus
# 需要生成代码的表(多张表以 ; 分割)
tables=bus_novel_chapter
com.hxkj.common.util.generator.tpl
tplDir=tpl
```
