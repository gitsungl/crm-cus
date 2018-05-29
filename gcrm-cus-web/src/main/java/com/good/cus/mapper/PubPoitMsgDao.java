package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.PubPoitMsg;
import com.good.db.IPage;

public interface PubPoitMsgDao {
	
	List<PubPoitMsg>  PubPoitMsgToTable(@Param("condition") Map<String, Object> param, @Param("page") IPage page);
	
}
