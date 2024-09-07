package com.laolang.jx.module.system.mapper;

import com.laolang.jx.module.system.entity.SysDictType;
import org.apache.ibatis.annotations.Param;

public interface SysDictTypeMapper {

    SysDictType selectById(@Param("id") Long id);
}
