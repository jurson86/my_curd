package com.github.qinyou.oa.activiti;

import com.jfinal.plugin.activerecord.DbKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.TransactionIsolationLevel;
import org.apache.ibatis.transaction.Transaction;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Slf4j
public class ActivitiTransaction implements Transaction {

    protected Connection connection;
    protected DataSource dataSource;
    protected TransactionIsolationLevel level;
    protected boolean autoCommit;

    public ActivitiTransaction(DataSource ds, TransactionIsolationLevel desiredLevel, boolean desiredAutoCommit) {
        dataSource = ds;
        level = desiredLevel;
        autoCommit = desiredAutoCommit;
    }

    public ActivitiTransaction(Connection connection) {
        this.connection = connection;
    }

    @Override
    public Connection getConnection() throws SQLException {
        if (connection == null) {
            log.debug("activiti open connection");
            openConnection();
        }
        return connection;
    }

    @Override
    public void commit() throws SQLException {
    }

    @Override
    public void rollback() throws SQLException {
    }

    @Override
    public void close() throws SQLException {
        if (connection != null) {
            log.debug("activiti close connection");
            DbKit.getConfig(ActivitiConfig.DATASOURCE_NAME).close(connection);
        }
    }

    protected void openConnection() throws SQLException {
        connection = DbKit.getConfig(ActivitiConfig.DATASOURCE_NAME).getConnection();
        if (level != null) {
            connection.setTransactionIsolation(level.getLevel());
        }
    }
}
