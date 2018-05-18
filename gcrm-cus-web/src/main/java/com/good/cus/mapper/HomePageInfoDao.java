package com.good.cus.mapper;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.bean.PubChgPo;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface HomePageInfoDao {

    List<MktStfPerfPo> performance(@Param("staffId") String staffId);

    List<MktTaskInfoPo> unfinished(@Param("staffId") String staffId);

    List<PubChgPo> pubDpsChg(@Param("staffId") String staffId);

    List<PubChgPo> pubLoanChg(@Param("staffId") String staffId);

    List<String> busiOpp(@Param("staffId") String staffId);

    List<MktStfPerfPo> perfRanking(@Param("staffId") String staffId);

    List<Map<String, String>> message(@Param("staffId") String staffId);

}