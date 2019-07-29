package com.github.qinyou.oa.activiti;

import com.jfinal.plugin.IPlugin;
import com.jfinal.plugin.activerecord.DbKit;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.impl.cfg.StandaloneProcessEngineConfiguration;

/***
 *  Jfinal activiti 插件
 * @author chuang
 */
@Slf4j
public class ActivitiPlugin implements IPlugin {
    public static ProcessEngine processEngine = null;

    private boolean isStarted = false;
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
        StandaloneProcessEngineConfiguration conf =
                (StandaloneProcessEngineConfiguration) ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration();
        conf.setDataSource(DbKit.getConfig().getDataSource())
                .setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE)
                .setDbHistoryUsed(true);
        //conf.setTransactionsExternallyManaged(true); // 使用托管事务工厂(不需要 事务 也可生效)
        conf.setTransactionFactory(new ActivitiTransactionFactory());
        ActivitiPlugin.processEngine = conf.buildProcessEngine();
        isStarted = true;
        return true;
    }
}
