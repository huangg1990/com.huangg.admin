package com.huangg.admin.web.controller.admin.sysmsg;

import com.huangg.admin.web.controller.admin.BaseController;
import com.huangg.admin.web.entity.SysMsg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class SysMsgController extends BaseController {
    private final static String BASE_URL="/admin/sysmsg/";

    @RequestMapping(value = BASE_URL+"list",method = RequestMethod.GET)
    public String list(){
        return BASE_URL+"list";
    }

    @RequestMapping(value = BASE_URL+"listdata")
    @ResponseBody
    public Object listdata(){
        int page=0;
        int size=10;
        if (size <= 0) {
            size = 10;
        }
        Map out = new HashMap<String, Object>();
        List<SysMsg> datas =  new ArrayList<>();
        SysMsg sysMsg=new SysMsg();
        sysMsg.setId(1);
        sysMsg.setCreate_time(new Date());
        sysMsg.setMessage("hello");
        sysMsg.setOper_user("huangg");
        sysMsg.setOrdernumber(3);
        sysMsg.setPlatform(1);
        sysMsg.setStatus(1);
        sysMsg.setTitle("fffff");
        sysMsg.setUpd_time(new Date());
        datas.add(sysMsg);
        int count = 1;
        out.put("recordsTotal", count);
        out.put("recordsFiltered", count);
        out.put("data", datas);

        return out;
    }

    @RequestMapping(value = BASE_URL+"add",method = RequestMethod.GET)
    public String add(){
        return BASE_URL+"add";
    }
}
