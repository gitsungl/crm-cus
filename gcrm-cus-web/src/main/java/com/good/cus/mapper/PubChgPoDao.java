package com.good.cus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.PubChgPo;
import com.good.db.IPage;

public interface PubChgPoDao {
	
	List<PubChgPo>  PubChgPoListForDir(@Param("staffId") String staffId, @Param("page") IPage page); 

}
