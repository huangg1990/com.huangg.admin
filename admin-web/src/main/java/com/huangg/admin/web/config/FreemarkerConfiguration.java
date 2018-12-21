package com.huangg.admin.web.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.freemarker.FreeMarkerAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.util.HashMap;
import java.util.Map;

@Configuration
public class FreemarkerConfiguration extends FreeMarkerAutoConfiguration.FreeMarkerWebConfiguration {

    @Value("${base}")
    private String base;

    @Value("${sitename}")
    private String sitename;

    @Override
    public FreeMarkerConfigurer freeMarkerConfigurer() {
        FreeMarkerConfigurer configurer = super.freeMarkerConfigurer();

        Map<String, Object> sharedVariables = new HashMap<String, Object>();
        sharedVariables.put("base", base);
        sharedVariables.put("sitename", sitename);
//        sharedVariables.put("username", username); // 获取当前session里的用户名
        configurer.setFreemarkerVariables(sharedVariables);

        return configurer;
    }
}