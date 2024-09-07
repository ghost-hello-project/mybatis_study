package com.laolang.mybatisstudy;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.laolang.jx.framework.common.util.JsonUtil;
import com.laolang.jx.module.system.entity.SysDictData;
import com.laolang.jx.module.system.entity.SysDictType;
import com.laolang.jx.module.system.mapper.SysDictDataMapper;
import com.laolang.jx.module.system.mapper.SysDictTypeMapper;
import java.io.IOException;
import java.io.Reader;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Slf4j
public class CommonTest {

    private SqlSessionFactory sqlSessionFactory;

    @BeforeClass
    public void beforeClass() {
        try (Reader reader = Resources.getResourceAsReader("mybatis-config.xml")) {
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    public void testSelectById() {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            SysDictTypeMapper sysDictTypeMapper = sqlSession.getMapper(SysDictTypeMapper.class);
            SysDictType dictType = sysDictTypeMapper.selectById(1L);
            log.info("dictType:{}", JsonUtil.toJson(dictType));
        }
    }

    @Test
    public void testSelectPage() {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            SysDictDataMapper sysDictDataMapper = sqlSession.getMapper(SysDictDataMapper.class);
            PageHelper.startPage(1, 10);
            List<SysDictData> sysDictDataList = sysDictDataMapper.selectList();
            PageInfo<SysDictData> sysDictDataPageInfo = new PageInfo<>(sysDictDataList);
            log.info("sysDictDataPageInfo:{}", JsonUtil.toJson(sysDictDataPageInfo, true));
        }
    }
}
