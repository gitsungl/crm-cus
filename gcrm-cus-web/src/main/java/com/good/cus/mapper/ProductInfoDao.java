package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.db.IPage;
import com.good.cus.bean.ProductInfoPo;

/**
 * 表ProductInfo 的相关操作
 */
public interface ProductInfoDao {


    public List<ProductInfoPo> list(@Param("condition") Map param, @Param("page") IPage page);

    public int insert(ProductInfoPo one);

    public int delete(ProductInfoPo one);

    public int update(ProductInfoPo one);

}
