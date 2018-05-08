package com.good.cus.mapper;

import com.good.cus.bean.HomePagePo;
import com.good.cus.bean.MktStfPerfPo;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface HomePageInfoDao {

    List<MktStfPerfPo> selectByStaffId(@Param("staffId") String staffId);

    List<HomePagePo> countMonthByStaffId(@Param("staffId") String staffId);

}