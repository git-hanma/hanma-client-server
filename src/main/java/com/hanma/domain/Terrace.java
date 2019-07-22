package com.hanma.domain;

import java.io.Serializable;
import java.util.Date;

public class Terrace implements Serializable{
    private Long merchantId;    //商家主键

    private Long staffId;   //员工主键

    private String merchantName;    //商家名称

    private Integer merchantStatus;     //商家状态

    private String merchantAddress;     //商家地址

    //private String merchantSubarea;     //行政分区

    private String merchantLinkman;     //联系人

    private String merchantPhone;       //商家电话

    private Integer merchantType;       //经营品列

    private Integer merchantGrade;      //商家评价

    private String merchantImg;         //商品图片

    private Date merchantCreateTime;       // 新增时间

    private Date merchantUpdateTime;      //修改时间

    private Integer merchantYn;         //逻辑状态

    private String merchantIntro;       //商家简介

    public Long getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    public Long getStaffId() {
        return staffId;
    }

    public void setStaffId(Long staffId) {
        this.staffId = staffId;
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName == null ? null : merchantName.trim();
    }

    public Integer getMerchantStatus() {
        return merchantStatus;
    }

    public void setMerchantStatus(Integer merchantStatus) {
        this.merchantStatus = merchantStatus;
    }

    public String getMerchantAddress() {
        return merchantAddress;
    }

    public void setMerchantAddress(String merchantAddress) {
        this.merchantAddress = merchantAddress == null ? null : merchantAddress.trim();
    }

    public String getMerchantLinkman() {
        return merchantLinkman;
    }

    public void setMerchantLinkman(String merchantLinkman) {
        this.merchantLinkman = merchantLinkman == null ? null : merchantLinkman.trim();
    }

    public String getMerchantPhone() {
        return merchantPhone;
    }

    public void setMerchantPhone(String merchantPhone) {
        this.merchantPhone = merchantPhone == null ? null : merchantPhone.trim();
    }

    public Integer getMerchantType() {
        return merchantType;
    }

    public void setMerchantType(Integer merchantType) {
        this.merchantType = merchantType;
    }

    public Integer getMerchantGrade() {
        return merchantGrade;
    }

    public void setMerchantGrade(Integer merchantGrade) {
        this.merchantGrade = merchantGrade;
    }

    public String getMerchantImg() {
        return merchantImg;
    }

    public void setMerchantImg(String merchantImg) {
        this.merchantImg = merchantImg == null ? null : merchantImg.trim();
    }

    public Date getMerchantCreateTime() {
        return merchantCreateTime;
    }

    public void setMerchantCreateTime(Date merchantCreateTime) {
        this.merchantCreateTime = merchantCreateTime;
    }

    public Date getMerchantUpdateTime() {
        return merchantUpdateTime;
    }

    public void setMerchantUpdateTime(Date merchantUpdateTime) {
        this.merchantUpdateTime = merchantUpdateTime;
    }

    public Integer getMerchantYn() {
        return merchantYn;
    }

    public void setMerchantYn(Integer merchantYn) {
        this.merchantYn = merchantYn;
    }

    public String getMerchantIntro() {
        return merchantIntro;
    }

    public void setMerchantIntro(String merchantIntro) {
        this.merchantIntro = merchantIntro == null ? null : merchantIntro.trim();
    }
}