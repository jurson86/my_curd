package base;

import com.hxkj.common.config.MappingKit;
import com.hxkj.common.util.TreeTableUtils;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;

public class DBTestBase {

    static final Prop configProp = PropKit.use("config.properties");
    public static   void  dbInit(){
        DruidPlugin dp = new DruidPlugin(configProp.get("jdbc.url"), configProp.get("jdbc.user"), configProp.get("jdbc.password"));
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        arp.setShowSql(true);
        MappingKit.mapping(arp);
        dp.start();
        arp.start();
    }

    public static void main(String[] args) {
        dbInit();
        Integer rootId = 12;
        System.out.println(TreeTableUtils.getSonTreeIds(rootId,"auth_menu","id","pid"));


    }
}
