package com.huangg.admin.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController extends BaseController {

    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String index(){
        return "/admin/index";
    }

}
