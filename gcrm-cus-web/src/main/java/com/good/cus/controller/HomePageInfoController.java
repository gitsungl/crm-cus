package com.good.cus.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.HomePagePo;
import com.good.cus.service.HomePageInfoService;

@Controller
@RequestMapping("/cus")
public class HomePageInfoController {
    private static Logger logger = LoggerFactory.getLogger(HomePageInfoController.class);

    @Autowired
    private HomePageInfoService service;

    @RequestMapping(value = "/homepage_info", method = { RequestMethod.POST, RequestMethod.GET })
    public String toPage() throws Exception {
        return "/homepage/homepage_info";
    }

    /**
     * 查询方法
     */
//    @RequestMapping(value = "/homepage_info/list", method = { RequestMethod.POST, RequestMethod.GET })
    @PostMapping("/homepage_info/list")
    @ResponseBody
    public WebPageResult list(WebRequest wr, HttpServletRequest request) throws Exception {
//        LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
//        List<HomePagePo> rows = service.list(linfo.getOperator().getUserID());
        List<HomePagePo> rows = service.list("admin");
        WebPageResult ret = new WebPageResult(rows);
        return ret;
    }
/*
    @RequestMapping(value = "/homepage_info/add", method = { RequestMethod.POST })
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

    @RequestMapping(value = "/homepage_info/update", method = { RequestMethod.POST })
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

    @RequestMapping(value = "/homepage_info/delete", method = { RequestMethod.POST })
    @ResponseBody
    public WebPageResult delete(@RequestBody ProductInfoPo[] list, HttpServletRequest request) throws Exception {
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
*/
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
