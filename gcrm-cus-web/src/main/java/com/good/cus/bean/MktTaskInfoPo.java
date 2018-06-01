package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MktTaskInfoPo implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 任务ID
     */
    private Integer taskId;
    /**
     * 对象ID
     */
    private Integer objId;
    /**
     * 任务名称
     */
    private String taskName;
    /**
     * 任务类型 1-营销活动 2-潜在客户 3-客户商机
     */
    private String taskType;
    /**
     * 任务状态 1-新增 2-已拜访 3-已记录 4-完成
     */
    private String taskStatus;
    /**
     * 客户号
     */
    private String custNo;
    /**
     * 客户名称
     */
    private String custName;
    /**
     * 客户经理
     */
    private String staffId;
    /**
     * 开始日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDate;
    /**
     * 结束日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    /**
     * 表外字段:未定义
     */
    private BigDecimal perfAlready;
    /**
     * 奖金总额
     */
    private BigDecimal perfTotal;
    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 引申字段:任务状态
     */
    private Integer taskStatusNum;
    
    public Integer getTaskStatusNum() {
		return taskStatusNum;
	}

	public void setTaskStatusNum(Integer taskStatusNum) {
		this.taskStatusNum = taskStatusNum;
	}

	public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public Integer getObjId() {
        return objId;
    }

    public void setObjId(Integer objId) {
        this.objId = objId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskType() {
        return taskType;
    }

    public void setTaskType(String taskType) {
        this.taskType = taskType;
    }

    public String getTaskStatus() {
        return taskStatus;
    }

    public void setTaskStatus(String taskStatus) {
        this.taskStatus = taskStatus;
    }

    public String getCustNo() {
        return custNo;
    }

    public void setCustNo(String custNo) {
        this.custNo = custNo;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    @JsonFormat(pattern = "yyyy-MM-dd" ,timezone = "GMT+8")
    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @JsonFormat(pattern = "yyyy-MM-dd" ,timezone = "GMT+8")
    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public BigDecimal getPerfAlready() {
        return perfAlready;
    }

    public void setPerfAlready(BigDecimal perfAlready) {
        this.perfAlready = perfAlready;
    }

    public BigDecimal getPerfTotal() {
        return perfTotal;
    }

    public void setPerfTotal(BigDecimal perfTotal) {
        this.perfTotal = perfTotal;
    }

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" ,timezone = "GMT+8")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}