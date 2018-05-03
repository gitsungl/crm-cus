package com.good.cus.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.enu.ApprovalResult;
import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.db.IPage;
import com.good.sys.MsgConstants;
import com.good.sys.WebUtils;
import com.good.sys.bean.LogonInfo;

import com.good.cus.service.ProductInfoService;
import com.good.cus.bean.ProductInfoPo;

/**
 * product_info Controller类
 */
@Controller
@RequestMapping("/cus")
public class ProductInfoController {
    private static final long serialVersionUID = 1L;
    private static Logger logger = LoggerFactory.getLogger(ProductInfoController.class);

    @Autowired
    private ProductInfoService service;

    @RequestMapping(value = "product_info", method = { RequestMethod.POST, RequestMethod.GET })
    public String toPage() throws Exception {
        return "/product_info/product_info";
    }
    /**
     * 查询方法
     */
    @RequestMapping(value = "/product_info/list", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public WebPageResult list(WebRequest wr, HttpServletRequest request) throws Exception {

        // 获取排序信息
        HashMap condition = WebUtils.fillOrderParam(wr, null);
        // 设置查询条件
        WebUtils.convertParam(condition, request);
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        List<ProductInfoPo> rows = service.list(linfo.getOperator(), condition, page);
        WebPageResult ret = new WebPageResult(rows);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());
        return ret;
    }

    @RequestMapping(value = "/product_info/add", method = { RequestMethod.POST })
    @ResponseBody
    public WebPageResult add(ProductInfoPo one, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            service.add(linfo.getOperator(), one);
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }
        return ret;
    }

    @RequestMapping(value = "/product_info/update", method = { RequestMethod.POST })
    @ResponseBody
    public WebPageResult update(ProductInfoPo one, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            service.update(linfo.getOperator(), one);
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }
        return ret;
    }

    @RequestMapping(value = "/product_info/delete", method = { RequestMethod.POST })
    @ResponseBody 
    public WebPageResult delete(@RequestBody ProductInfoPo [] list, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            for (ProductInfoPo one : list) {
                service.delete(linfo.getOperator(), one);
            }
            ret.setMsg("成功删除" + list.length + " 条记录!");
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }

        return ret;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
