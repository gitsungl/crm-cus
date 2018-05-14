package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class MktTaskInfoPo implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer taskId;

    private Integer objId;

    private String taskName;

    private String taskType;

    private String taskStatus;

    private String custNo;

    private String custName;

    private String staffId;

    private Date startDate;

    private Date endDate;

    private BigDecimal perfAlready;

    private BigDecimal perfTotal;

    private Date createTime;

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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}