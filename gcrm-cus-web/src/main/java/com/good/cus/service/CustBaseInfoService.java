package com.good.cus.service;

import java.util.List;
import java.util.Map;

import com.good.cus.bean.CustBaseInfoPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;

public interface CustBaseInfoService {

    /**
     * 客户列表
     * 
     * @param staffId
     * @param condition
     * @param page
     * @return
     * @throws ServiceException
     */
    public List<CustBaseInfoPo> listCustBaseInfo(String staffId, Map<String, Object> condition, IPage page) throws ServiceException;

    /**
     * 股权结构
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public List<Map<String, Object>> ownstr(String id) throws ServiceException;

    /**
     * 关键人信息
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public String pri(String id) throws ServiceException;

    /**
     * 近三月交易动态
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public Map<String, List<String>> trade(String id) throws ServiceException;

    /**
     * 风险管理
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public List<String> rskm(String id) throws ServiceException;

    /**
     * 行内客户标签
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public List<Map<String, Object>> custTags(String id) throws ServiceException;

    /**
     * 行业标签
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public List<Map<String, Object>> induTags(String id) throws ServiceException;

    /**
     * 企业关系圈
     * 
     * @param id
     * @return
     * @throws ServiceException
     */
    public Map<String, Object> relacorp(String id) throws ServiceException;

}
