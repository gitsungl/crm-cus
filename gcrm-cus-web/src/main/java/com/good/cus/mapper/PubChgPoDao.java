package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.PubChgPo;
import com.good.db.IPage;

public interface PubChgPoDao {
	
	List<PubChgPo>  PubChgPoListForDirL(@Param("staffId") String staffId,@Param("condition") Map<String, Object> param, @Param("page") IPage page);
	
	List<PubChgPo>  PubChgPoListForDirD(@Param("staffId") String staffId,@Param("condition") Map<String, Object> param, @Param("page") IPage page); 

}
