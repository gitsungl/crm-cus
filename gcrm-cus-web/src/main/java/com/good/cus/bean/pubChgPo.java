package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class pubChgPo implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String custNo;

    private String custName;

    private BigDecimal bal;

    private BigDecimal thanYAmt;

    private BigDecimal thanDAmt;

    private BigDecimal thanMAmt;

    private String staffId;

    private Date bizDate;

    private String cry;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public BigDecimal getBal() {
        return bal;
    }

    public void setBal(BigDecimal bal) {
        this.bal = bal;
    }

    public BigDecimal getThanYAmt() {
        return thanYAmt;
    }

    public void setThanYAmt(BigDecimal thanYAmt) {
        this.thanYAmt = thanYAmt;
    }

    public BigDecimal getThanDAmt() {
        return thanDAmt;
    }

    public void setThanDAmt(BigDecimal thanDAmt) {
        this.thanDAmt = thanDAmt;
    }

    public BigDecimal getThanMAmt() {
        return thanMAmt;
    }

    public void setThanMAmt(BigDecimal thanMAmt) {
        this.thanMAmt = thanMAmt;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public Date getBizDate() {
        return bizDate;
    }

    public void setBizDate(Date bizDate) {
        this.bizDate = bizDate;
    }

    public String getCry() {
        return cry;
    }

    public void setCry(String cry) {
        this.cry = cry;
    }
}