package test;

import com.hxkj.common.util.RandomUtils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/***
 * 反射工具
 */
public class ReflectionUtils {


    //  常规 反射 操作
    public static void main(String[] args) throws Exception{

            // 通过全类名 反射生成 class 对象
            Class personClass = Class.forName("test.Person");
            System.out.println(" Class.forName is null ? "+(personClass==null));

            // 通过 已知对象 生成 class 对象
            Class personClass2 = Person.class ; // 或者 new Person().getclass()
            System.out.println(" getclass is null ? "+(personClass2==null));

            // 调用 所有公共方法
            Method[] allPublicMethod = personClass.getMethods();  // 获得所有公共方法 (public 修饰的方法，成员方法，静态方法，继承的方法，只有被修饰为public，都可获得）
            for(Method publicMethod : allPublicMethod){
                System.out.println("-- 公共方法："+publicMethod.toString());
            }
            Object personInstance = personClass.newInstance();
            Method studyDevelopMethod = personClass.getMethod("studyDevelop", String.class);
            studyDevelopMethod.invoke(personInstance,"sass,python"); //  调用 确定名称 无返回值方法
            Method sayWordsMethod = personClass.getMethod("sayWords");
            String someWords = (String) sayWordsMethod.invoke(personInstance);
            System.out.println(" public mehtod return string: "+someWords);


            // 调用 本类中定义 的所有方法 （本类中 公有方法 私有方法 静态方法)
            Method[] allDeclaredMethods = personClass.getDeclaredMethods();
            for(Method declareMethod : allDeclaredMethods){
                System.out.println("-- 本类中生命的方法: "+declareMethod.toString());
            }
            Method studyDevelopMethod2 = personClass.getDeclaredMethod("studyDevelop", String.class);
            studyDevelopMethod2.invoke(personInstance,"hello world"); // 调用公共方法
            Method breathMethod = personClass.getDeclaredMethod("breath");// 调用私有方法
            breathMethod.setAccessible(true); //不设置为true，调用私有方法会抛出异常
            breathMethod.invoke(personInstance);


            // 获得公共成员变量
           Field[] allPublicFields = personClass.getFields(); // 所有公共字段 (继承的，自己的，静态的)
           for(Field publicField : allPublicFields){
               System.out.println("-- 公共成员变量: "+publicField.toString());
           }
           Field usernameField = personClass.getField("username");
           usernameField.set(personInstance,"zhangchuang");        // 设置 获得 公有变量 的 值
           System.out.println(usernameField.get(personInstance));
           Field genderField = personClass.getDeclaredField("gender");
           genderField.setAccessible(true); // 私有 变量必须设置为true 才可访问
           genderField.set(personInstance,"男");
           System.out.println(genderField.get(personInstance));

    }
}

class Person{

    public final static  String REGION = "CHINA";
    // 公共成员变量
    public String username;
    private String gender;

    // 私有成员变量
    private Integer age;

    void good(){

    }

    // 公有方法
    public void  studyDevelop(String developSkills){
        System.out.println(" study "+developSkills + " ......");
    }
    public String  sayWords(){
        return RandomUtils.getRandomRgbStr();
    }
    public final static  void hello(){
        System.out.println("hello world");
    }

    // 私有方法
    private void breath(){
        System.out.println(" anyone need breath ...... ");
    }
    private  int[] favoriteColor(){
        return RandomUtils.getRandomRgb();
    }

}
