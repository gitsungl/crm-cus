package com.good.cus.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class TermRadarPo implements Serializable {

    private static final long serialVersionUID = 1L;

    private String name;

    private List<String> value;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<String> getValue() {
		return value;
	}

	public void setValue(List<String> value) {
		this.value = value;
	}

    
}