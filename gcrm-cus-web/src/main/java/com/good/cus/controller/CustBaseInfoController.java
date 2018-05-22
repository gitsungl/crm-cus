package com.good.cus.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.CustBaseInfoPo;
import com.good.cus.service.CustBaseInfoService;
import com.good.db.IPage;
import com.good.sys.WebUtils;

@Controller
@RequestMapping("/cus")
public class CustBaseInfoController {
    private static Logger logger = LoggerFactory.getLogger(CustBaseInfoController.class);

    @Autowired
    private CustBaseInfoService custBaseInfoService;

    @GetMapping("/custbase_info")
    public String toPage() throws Exception {
        return "/custbase/custbase_info";
    }

    @GetMapping("/custbase_view")
    public ModelAndView toViewPage(@RequestParam("id") String id) throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/custbase/custbase_view");
        mv.addObject("id", id);
        return mv;
    }

    @SuppressWarnings("unchecked")
    @PostMapping("/custbase_info/listCustBaseInfo")
    @ResponseBody
    public WebPageResult listCustBaseInfo(WebRequest wr, HttpServletRequest request) throws Exception {
        // LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = "admin"; // linfo.getOperator().getUserID();
        logger.info("controller staffId: {}", staffId);

        // 获取排序信息
        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
        // 设置查询条件
        condition.put("custNo", request.getParameter("custNo"));
        condition.put("custName", request.getParameter("custName"));
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        List<CustBaseInfoPo> lists = custBaseInfoService.listCustBaseInfo(staffId, condition, page);
        WebPageResult ret = new WebPageResult(lists);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());

        return ret;
    }

    @SuppressWarnings("unchecked")
    @PostMapping("/custbase_view/custBaseView")
    @ResponseBody
    public WebPageResult custBaseView(WebRequest wr, HttpServletRequest request) throws Exception {
        // LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = "admin"; // linfo.getOperator().getUserID();
        logger.info("controller staffId: {}", staffId);

        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
        String id = request.getParameter("id");
        condition.put("id", id);
        List<CustBaseInfoPo> listCustBaseInfo = custBaseInfoService.listCustBaseInfo(staffId, condition, null);
        List<Map<String, Object>> ownstr = custBaseInfoService.ownstr(id);
        String pri = custBaseInfoService.pri(id);
        Map<String, List<String>> trade = custBaseInfoService.trade(id);
        List<String> rskm = custBaseInfoService.rskm(id);

        Map<String, Object> result = new HashMap<String, Object>();
        result.put("custBase", listCustBaseInfo.get(0));
        result.put("ownstrMax", ((BigDecimal) ownstr.get(0).get("value")).intValue() * 1.5);
        result.put("ownstr", ownstr);
        result.put("pri", pri);
        result.put("trade", trade);
        result.put("rskm", rskm);
        logger.info("listCustBaseInfo controller result:\n{}\n", result);
        WebPageResult ret = new WebPageResult(result);
        return ret;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
