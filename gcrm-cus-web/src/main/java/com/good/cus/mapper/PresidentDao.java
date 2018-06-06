package com.good.cus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.bean.PubChgPo;

public interface PresidentDao {


    List<MktStfPerfPo> performance(@Param("staffId") String staffId);
    
    List<MktStfPerfPo> performanceOne(@Param("staffId") String staffId);
    
    List<MktStfPerfPo> performanceTwo(@Param("staffId") String staffId);

    List<MktTaskInfoPo> unfinished(@Param("staffId") String staffId);

    List<PubChgPo> pubDpsChg(@Param("staffId") String staffId);

    List<PubChgPo> pubLoanChg(@Param("staffId") String staffId);

    List<String> busiOpp(@Param("staffId") String staffId);

    List<MktStfPerfPo> perfRanking(@Param("staffId") String staffId);

    List<String> message(@Param("staffId") String staffId);

	List<String> termRadarNum(@Param("str") String str);
	List<String> termRadarOrgCode();

}