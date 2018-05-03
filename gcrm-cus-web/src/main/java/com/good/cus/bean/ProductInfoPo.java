package com.good.cus.bean;

import java.io.Serializable;

/**
 * 对应表product_info的类
 */
public class ProductInfoPo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 产品ID
     */
    private String prdId;
    /**
     * 产品名称
     */
    private String prdName;
    /**
     * 产品类型
     */
    private String prdType;
    /**
     * 产品描述
     */
    private String prdDesc;
    /**
     * 创建时间
     */
    private String crtTime;
    /**
     * 创建人
     */
    private String crtUser;

    /**
     * @return 产品ID
     */
    public String getPrdId () {
        return prdId;
    }

    /**
     * @param prdId 产品ID
     */
    public void setPrdId (String prdId) {
        this.prdId = prdId;
    }
    /**
     * @return 产品名称
     */
    public String getPrdName () {
        return prdName;
    }

    /**
     * @param prdName 产品名称
     */
    public void setPrdName (String prdName) {
        this.prdName = prdName;
    }
    /**
     * @return 产品类型
     */
    public String getPrdType () {
        return prdType;
    }

    /**
     * @param prdType 产品类型
     */
    public void setPrdType (String prdType) {
        this.prdType = prdType;
    }
    /**
     * @return 产品描述
     */
    public String getPrdDesc () {
        return prdDesc;
    }

    /**
     * @param prdDesc 产品描述
     */
    public void setPrdDesc (String prdDesc) {
        this.prdDesc = prdDesc;
    }
    /**
     * @return 创建时间
     */
    public String getCrtTime () {
        return crtTime;
    }

    /**
     * @param crtTime 创建时间
     */
    public void setCrtTime (String crtTime) {
        this.crtTime = crtTime;
    }
    /**
     * @return 创建人
     */
    public String getCrtUser () {
        return crtUser;
    }

    /**
     * @param crtUser 创建人
     */
    public void setCrtUser (String crtUser) {
        this.crtUser = crtUser;
    }

}