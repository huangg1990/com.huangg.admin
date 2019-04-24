package com.huangg.admin.web.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class SysMsg implements Serializable {
    private int id;
    private int ordernumber;
    private int status;
    private int platform;
    private String title;
    private String message;
    private Date create_time;
    private Date valid_start;
    private Date valid_end;
    private String oper_user;
    private Date upd_time;

}

