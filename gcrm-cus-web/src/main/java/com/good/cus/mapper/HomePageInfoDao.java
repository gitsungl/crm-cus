package com.good.cus.mapper;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.mktTaskInfoPo;
import com.good.cus.bean.pubChgPo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface HomePageInfoDao {

    List<MktStfPerfPo> performance(@Param("staffId") String staffId);

    List<mktTaskInfoPo> unfinished(@Param("staffId") String staffId);

    List<pubChgPo> pubDpsChg(@Param("staffId") String staffId);

    List<pubChgPo> pubLoanChg(@Param("staffId") String staffId);

    List<String> busiOpp(@Param("staffId") String staffId);

    List<MktStfPerfPo> perfRanking(@Param("staffId") String staffId);

}