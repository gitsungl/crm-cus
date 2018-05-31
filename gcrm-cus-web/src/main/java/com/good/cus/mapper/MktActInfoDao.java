package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktActInfoPo;
import com.good.db.IPage;

/**
 * 表MktActInfoPo 的相关操作
 */
public interface MktActInfoDao {


    public List<MktActInfoPo> list(@Param("condition") Map<String,Object> param, @Param("page") IPage page);

    public void insert(MktActInfoPo one);

    public void delete(MktActInfoPo one);

    public void update(MktActInfoPo one);

}
