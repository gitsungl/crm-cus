package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktTaskInfoPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;

/**
 * 表 Mkt_Task_Info 的相关操作
 */
public interface MktTaskInfoDao {

	/**
     * 营销任务列表
     * @param condition 查询条件Map
     * @param page 分页信息
     * @return  MktTaskInfoPo集合
     * @throws ServiceException
     */
	public List<MktTaskInfoPo> list(@Param("condition") Map<String,Object> param, @Param("page") IPage page);

	/**
     * 新增MktTaskInfoPo
     */
	public void insert(MktTaskInfoPo one);

	/**
     * 删除MktTaskInfoPo
     */
	public void delete(MktTaskInfoPo one);

	/**
     * 更新MktTaskInfoPo
     */
	public void update(MktTaskInfoPo one);
}
