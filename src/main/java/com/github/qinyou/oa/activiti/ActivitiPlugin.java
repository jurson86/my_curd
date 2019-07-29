package com.github.qinyou.oa.activiti;

import com.jfinal.plugin.IPlugin;
import com.jfinal.plugin.activerecord.DbKit;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.impl.cfg.StandaloneProcessEngineConfiguration;

/***
 * jfinal 整合  activiti
 * @author chuang
 */
@Slf4j
public class ActivitiPlugin implements IPlugin {
    public static ProcessEngine processEngine = null;
    private static ProcessEngineConfiguration processEngineConfiguration = null;
    private boolean isStarted = false;

    public static ProcessEngine buildProcessEngine() {
        if (processEngine == null) {
            if (processEngineConfiguration != null) {
                processEngine = processEngineConfiguration.buildProcessEngine();
            }
        }
        return processEngine;
    }

    @Override
    public boolean start() {
        try {
            createProcessEngine();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public boolean stop() {
        ProcessEngines.destroy();
        isStarted = false;
        return true;
    }

    private Boolean createProcessEngine() throws Exception {
        if (isStarted) {
            return true;
        }
        StandaloneProcessEngineConfiguration conf = (StandaloneProcessEngineConfiguration) ProcessEngineConfiguration
                .createStandaloneProcessEngineConfiguration();
        conf.setDataSource(DbKit.getConfig().getDataSource())
                .setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE)
                .setDbHistoryUsed(true);
        //conf.setTransactionsExternallyManaged(true); // 使用托管事务工厂
        conf.setTransactionFactory(new ActivitiTransactionFactory());
        ActivitiPlugin.processEngine = conf.buildProcessEngine();
        isStarted = true;
        return isStarted;
    }
}
