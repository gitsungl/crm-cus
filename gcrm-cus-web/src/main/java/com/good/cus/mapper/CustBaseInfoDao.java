package com.good.cus.mapper;

import com.good.cus.bean.CustBaseInfoPo;
import com.good.db.IPage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CustBaseInfoDao {

    List<CustBaseInfoPo> listCustBaseInfo(@Param("condition") Map<String, Object> param, @Param("page") IPage page);

    List<Map<String, Object>> ownstr(@Param("id") String id);

    List<Map<String, String>> pri(@Param("id") String id);

    List<String> dps(@Param("condition") Map<String, Object> param);

    List<String> loan(@Param("condition") Map<String, Object> param);

    List<String> rskm(@Param("id") String id);

}