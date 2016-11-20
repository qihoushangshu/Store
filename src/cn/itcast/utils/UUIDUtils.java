package cn.itcast.utils;

import java.util.UUID;

/**
 * Created by Administrator on 2016/6/28.
 */
public class UUIDUtils {
    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-","");
    }
}
