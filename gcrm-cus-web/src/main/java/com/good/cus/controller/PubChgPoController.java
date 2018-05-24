package com.good.cus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.PubChgPo;
import com.good.cus.service.PubChgPoService;
import com.good.db.IPage;
import com.good.sys.WebUtils;

@Controller
@RequestMapping("/cus")
public class PubChgPoController {

	private static Logger logger = LoggerFactory.getLogger(CustBaseInfoController.class);
	
	@Autowired
	private PubChgPoService Service;
	
    @GetMapping("/pubchg_info")
    public String toPage() throws Exception {
        return "/pubchg/pubchg_info";
    }
	
	@PostMapping("/pubchg_info/listPubChgInfo")
    @ResponseBody
    public WebPageResult listPubChgInfo(WebRequest wr, HttpServletRequest request) throws Exception {
        String staffId = "admin"; // linfo.getOperator().getUserID();
        logger.info("controller staffId: {}", staffId);

//        // 获取排序信息
//        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
//        // 设置查询条件
//        condition.put("custNo", request.getParameter("custNo"));
//        condition.put("custName", request.getParameter("custName"));
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        List<PubChgPo> lists = Service.PubChgPoListForDir(staffId, page);
        WebPageResult ret = new WebPageResult(lists);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());

        return ret;
    }
}
