package com.github.qinyou.oa;

import com.github.qinyou.oa.activiti.ActivitiPlugin;
import com.github.qinyou.oa.activiti.ActivitiUtils;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.druid.DruidPlugin;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.ZipInputStream;

@Slf4j
public class Test {

    static void init() {
        Prop jdbcProp = PropKit.use("jdbc.properties");
        DruidPlugin dp = new DruidPlugin(jdbcProp.get("jdbc.url"), jdbcProp.get("jdbc.user"), jdbcProp.get("jdbc.password"), jdbcProp.get("jdbc.driver"));
        dp.start();
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        arp.setDialect(new MysqlDialect());
        arp.setShowSql(true);
        arp.start();
        ActivitiPlugin ap = new ActivitiPlugin();
        ap.start();
    }

    // 部署流程
    static void deployZip() throws FileNotFoundException {
        InputStream in = new FileInputStream("E:/leaveProcess.zip");
        String processName = "简单请假流程";
        ZipInputStream zipInputStream = new ZipInputStream(in);
        Deployment deployment = ActivitiUtils.getProcessEngine().getRepositoryService()
                .createDeployment().addZipInputStream(zipInputStream)
                .name(processName)
                .deploy();
        log.info("id:{}", deployment.getId());
        log.info("name:{}", deployment.getName());
    }

    static void listProcessDefine() {
        List<ProcessDefinition> list = ActivitiUtils.getRepositoryService().createProcessDefinitionQuery()
                .latestVersion().list();
        list.forEach(processDefinition -> {
            log.info(processDefinition.getKey());
            log.info(processDefinition.getId());
            log.info(processDefinition.getName());
            log.info(processDefinition.getCategory());
            log.info(processDefinition.getDescription());
            log.info(processDefinition.getVersion() + "");
            log.info(processDefinition.getTenantId());  // 租户
            log.info(processDefinition.getResourceName());
            log.info(processDefinition.getDiagramResourceName());
        });
    }

    public static void main(String[] args) throws Exception {
        init();
        String processInstanceId = "7501";

        System.out.println("--start------");
        ActivitiUtils.getHistoryService().createHistoricActivityInstanceQuery()
                .processInstanceId(processInstanceId)
                .list().forEach(historicActivityInstance -> {
            System.out.println("开始时间:"+historicActivityInstance.getStartTime());
            System.out.println("结束时间:"+historicActivityInstance.getEndTime());

            System.out.println("getActivityName:"+historicActivityInstance.getActivityName());
            System.out.println("getAssignee:"+historicActivityInstance.getAssignee());

            System.out.println("getActivityType:"+historicActivityInstance.getActivityType());
            System.out.println("getExecutionId:"+historicActivityInstance.getExecutionId());
        });
        System.out.println("--end------");
    }
}
