package com.huangg.admin.web.controller.admin.news;

import com.huangg.admin.web.controller.admin.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController extends BaseController {
    private final static String BASE_URL="/admin/news/";

    @RequestMapping(value = BASE_URL+"index",method = RequestMethod.GET)
    public String index(){
        return BASE_URL+"index";
    }

}
