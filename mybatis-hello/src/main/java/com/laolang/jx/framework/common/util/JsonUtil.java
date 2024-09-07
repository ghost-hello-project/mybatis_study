package com.laolang.jx.framework.common.util;

import cn.hutool.core.date.DatePattern;
import cn.hutool.json.JSONConfig;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import lombok.experimental.UtilityClass;

@UtilityClass
public class JsonUtil {

    private static final JSONConfig jsonConfig;

    static {
        jsonConfig = JSONConfig.create();
        jsonConfig.setDateFormat(DatePattern.NORM_DATETIME_PATTERN);
    }

    public static String toJson(Object o) {
        return toJson(o, false);
    }

    public static String toJson(Object o, boolean pretty) {
        String jsonStr = JSONUtil.toJsonStr(o, jsonConfig);
        return pretty ? JSONUtil.toJsonPrettyStr(JSONUtil.parseObj(jsonStr)) : jsonStr;
    }

    public static JSONObject parseObj(String str) {
        return JSONUtil.parseObj(str, jsonConfig);
    }
}
