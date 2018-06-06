package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class MktStfPerfPo implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Date bizDate;

    private String staffId;

    private String staffName;

    private BigDecimal perfAcph;

    private BigDecimal perfTotal;

    private String createUser;

    private Date createTime;

    private Date lastUpdUser;

    private String lastUpdTime;
 
    private String perfAcphStr;
    
    private List<BigDecimal> perfAcphList;
    
    //新增属性
    
    private BigDecimal perfAcphOne;
    
    private BigDecimal perfAcphTwo;
    
    public BigDecimal getPerfAcphOne() {
		return perfAcphOne;
	}

	public void setPerfAcphOne(BigDecimal perfAcphOne) {
		this.perfAcphOne = perfAcphOne;
	}

	public BigDecimal getPerfAcphTwo() {
		return perfAcphTwo;
	}
    
    public String getPerfAcphStr() {
		return perfAcphStr;
	}

	public void setPerfAcphStr(String perfAcphStr) {
		this.perfAcphStr = perfAcphStr;
	}

	public List<BigDecimal> getPerfAcphList() {
		return perfAcphList;
	}

	public void setPerfAcphList(List<BigDecimal> perfAcphList) {
		this.perfAcphList = perfAcphList;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getBizDate() {
        return bizDate;
    }

    public void setBizDate(Date bizDate) {
        this.bizDate = bizDate;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public BigDecimal getPerfAcph() {
        return perfAcph;
    }

    public void setPerfAcph(BigDecimal perfAcph) {
        this.perfAcph = perfAcph;
    }

    public BigDecimal getPerfTotal() {
        return perfTotal;
    }

    public void setPerfTotal(BigDecimal perfTotal) {
        this.perfTotal = perfTotal;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastUpdUser() {
        return lastUpdUser;
    }

    public void setLastUpdUser(Date lastUpdUser) {
        this.lastUpdUser = lastUpdUser;
    }

    public String getLastUpdTime() {
        return lastUpdTime;
    }

    public void setLastUpdTime(String lastUpdTime) {
        this.lastUpdTime = lastUpdTime;
    }
}