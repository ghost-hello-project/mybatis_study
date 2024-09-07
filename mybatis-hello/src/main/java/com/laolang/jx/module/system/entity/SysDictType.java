package com.laolang.jx.module.system.entity;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class SysDictType {
    private Long id;
    private String name;
    private String type;
    private String groupCode;
    private String status;
    private String createBy;
    private LocalDateTime createTime;
    private String updateBy;
    private LocalDateTime updateTime;
    private String remark;
}
