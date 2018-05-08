package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class HomePagePo implements Serializable {

    private static final long serialVersionUID = 1L;

    private String month;

    private BigDecimal perfAcph;

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public BigDecimal getPerfAcph() {
        return perfAcph;
    }

    public void setPerfAcph(BigDecimal perfAcph) {
        this.perfAcph = perfAcph;
    }

}