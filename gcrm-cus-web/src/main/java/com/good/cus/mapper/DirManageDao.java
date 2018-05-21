package com.good.cus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.bean.PubChgPo;
import com.good.cus.bean.PubVifyListPo;

public interface DirManageDao {

	List<MktStfPerfPo> performance(@Param("staffId") String staffId);

	List<MktStfPerfPo> perfRanking(@Param("staffId") String staffId);
	
    List<MktTaskInfoPo> unfinished(@Param("staffId") String staffId);

    List<PubChgPo> pubDpsChg(@Param("staffId") String staffId);

    List<PubChgPo> pubLoanChg(@Param("staffId") String staffId);

    List<PubVifyListPo> PubVifyListPoForTable(@Param("createUser") String createUser);

    List<String> message(@Param("staffId") String staffId);
}
