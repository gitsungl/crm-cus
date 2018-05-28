package com.good.cus.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.db.IPage;
import com.good.cus.bean.CustBaseInfoPo;
import com.good.cus.mapper.CustBaseInfoDao;
import com.good.cus.service.CustBaseInfoService;
import com.good.sys.ServiceException;

@Service
public class CustBaseInfoServiceImpl implements CustBaseInfoService {
    private static Logger logger = LoggerFactory.getLogger(CustBaseInfoServiceImpl.class);

    @Autowired
    private CustBaseInfoDao custBaseInfoDao;

    @Override
    public List<CustBaseInfoPo> listCustBaseInfo(String staffId, Map<String, Object> condition, IPage page) throws ServiceException {
        return custBaseInfoDao.listCustBaseInfo(condition, page);
    }

    @Override
    public List<Map<String, Object>> ownstr(String id) throws ServiceException {
        List<Map<String, Object>> result = custBaseInfoDao.ownstr(id);
        logger.info("ownstr service result:\n{}\n", result);
        return result;
    }

    @Override
    public String pri(String id) throws ServiceException {
        String result = "";
        List<Map<String, String>> list = custBaseInfoDao.pri(id);
        if (list != null && list.size() > 0) {
            StringBuilder sb = new StringBuilder("");
            boolean activeFlag = true;
            int lineBreakCount = 1;
            for (int i = 0; i < list.size(); i++, lineBreakCount++) {
                if (lineBreakCount == 1) {
                    if (activeFlag) {
                        sb.append("<li class='active'>");
                        activeFlag = false;
                    } else {
                        sb.append("<li>");
                    }
                }

                Map<String, String> map = list.get(i);
                sb.append("<div class='keyman-inline'><img src='../../images/crm/");
                sb.append(map.get("sex"));
                sb.append(".png'><p class='text-center'>");
                sb.append(map.get("name"));
                sb.append("</p></div>");

                if (lineBreakCount == 5 || (i + 1) == list.size()) {
                    sb.append("</li>");
                    lineBreakCount = 0;
                }
            }
            result = sb.toString();
        }
        logger.info("pri service result:\n{}\n", result);
        return result;
    }

    @Override
    public Map<String, List<String>> trade(String id) throws ServiceException {
        Map<String, List<String>> result = new HashMap<String, List<String>>(3);

        int year3 = Calendar.getInstance().get(Calendar.YEAR);
        int month3 = Calendar.getInstance().get(Calendar.MONTH) + 1;
        int year1 = year3;
        int year2 = year3;
        int month1 = month3 - 2;
        int month2 = month3 - 1;

        if (month3 == 1) {
            year1 = year3 - 1;
            year2 = year3 - 1;
            month1 = 11;
            month2 = 12;
        } else if (month3 == 2) {
            year1 = year3 - 1;
            month1 = 12;
            month2 = 1;
        }

        List<String> xData = new ArrayList<String>(3);
        xData.add(month1 + "月");
        xData.add(month2 + "月");
        xData.add(month3 + "月");

        Map<String, Object> condition = new HashMap<String, Object>(7);
        condition.put("id", id);
        condition.put("year1", year1);
        condition.put("year2", year2);
        condition.put("year3", year3);
        condition.put("month1", month1);
        condition.put("month2", month2);
        condition.put("month3", month3);

        List<String> dps = custBaseInfoDao.dps(condition);
        List<String> loan = custBaseInfoDao.loan(condition);

        result.put("xData", xData);
        result.put("dps", dps);
        result.put("loan", loan);
        logger.info("trade service result:\n{}\n", result);
        return result;
    }

    @Override
    public List<String> rskm(String id) throws ServiceException {
        List<String> result = custBaseInfoDao.rskm(id);
        logger.info("rskm service result:\n{}\n", result);
        return result;
    }

    @Override
    public Map<String, Object> relacorp(String id) throws ServiceException {
        Map<String, Object> result = new HashMap<String, Object>(2);
        List<Map<String, String>> data = new ArrayList<Map<String, String>>();
        List<Map<String, String>> links = new ArrayList<Map<String, String>>();

        Map<String, String> data1 = new HashMap<String, String>(4);
        Map<String, String> data2 = new HashMap<String, String>(4);
        Map<String, String> data3 = new HashMap<String, String>(4);
        Map<String, String> data4 = new HashMap<String, String>(4);
        Map<String, String> data5 = new HashMap<String, String>(4);
        data1.put("name", "赫春雷");
        data1.put("x", "0");
        data1.put("y", "17");
        data1.put("positionFlag", "u");
        data2.put("name", "密伯元");
        data2.put("x", "20");
        data2.put("y", "17");
        data2.put("positionFlag", "u");
        data3.put("name", "杨吉贵");
        data3.put("x", "40");
        data3.put("y", "17");
        data3.put("positionFlag", "u");
        data4.put("name", "上海东家金服\n投资管理\n有限公司");
        data4.put("x", "5");
        data4.put("y", "30");
        data4.put("symbolSize", "80");
        data5.put("name", "上海东戊\n信息科技\n有限公司");
        data5.put("x", "35");
        data5.put("y", "30");
        data5.put("symbolSize", "80");
        data.add(data1);
        data.add(data2);
        data.add(data3);
        data.add(data4);
        data.add(data5);

        Map<String, String> link1 = new HashMap<String, String>(3);
        link1.put("source", "赫春雷");
        link1.put("target", "上海东家金服\n投资管理\n有限公司");
        link1.put("params", "法定代表人");
        links.add(link1);
        Map<String, String> link2 = new HashMap<String, String>(3);
        link2.put("source", "赫春雷");
        link2.put("target", "上海东戊\n信息科技\n有限公司");
        link2.put("params", "法定代表人，执行董事");
        links.add(link2);
        Map<String, String> link3 = new HashMap<String, String>(3);
        link3.put("source", "密伯元");
        link3.put("target", "上海东家金服\n投资管理\n有限公司");
        links.add(link3);
        Map<String, String> link4 = new HashMap<String, String>(3);
        link4.put("source", "杨吉贵");
        link4.put("target", "上海东戊\n信息科技\n有限公司");
        link4.put("params", "总经理");
        links.add(link4);

        result.put("data", data);
        result.put("links", links);
        return result;
    }

}
