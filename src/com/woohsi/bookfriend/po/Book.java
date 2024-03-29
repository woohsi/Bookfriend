package com.woohsi.bookfriend.po;

import java.sql.Timestamp;
/**
 * 书籍实体类
 */
public class Book {
    private Integer bkid;//书籍id
    private String bkname;//书籍名称
    private Double bkprice;//书籍价格
    private String bkpress;//书籍出版社
    private String bkdescription;//书籍描述
    private Integer status;//书籍售卖状态 1:已售出 0:未售出
    private Integer uid;//卖家id
    private String bkimg;//书籍图片地址
    private Integer onsell;//书籍上架状态 1:已上架 0:待审核

    public Integer getBkid() {
        return bkid;
    }

    public void setBkid(Integer bkid) {
        this.bkid = bkid;
    }

    public String getBkname() {
        return bkname;
    }

    public void setBkname(String bkname) {
        this.bkname = bkname;
    }

    public Double getBkprice() {
        return bkprice;
    }

    public void setBkprice(Double bkprice) {
        this.bkprice = bkprice;
    }

    public String getBkpress() {
        return bkpress;
    }

    public void setBkpress(String bkpress) {
        this.bkpress = bkpress;
    }

    public String getBkdescription() {
        return bkdescription;
    }

    public void setBkdescription(String bkdescription) {
        this.bkdescription = bkdescription;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getBkimg() {
        return bkimg;
    }

    public void setBkimg(String bkimg) {
        this.bkimg = bkimg;
    }

    public Integer getOnsell() {
        return onsell;
    }

    public void setOnsell(Integer onsell) {
        this.onsell = onsell;
    }

    @Override
    public String toString() {
        return "Book{" +
                "bkid=" + bkid +
                ", bkname='" + bkname + '\'' +
                ", bkprice=" + bkprice +
                ", bkpress='" + bkpress + '\'' +
                ", bkdescription='" + bkdescription + '\'' +
                ", status=" + status +
                ", uid=" + uid +
                ", bkimg='" + bkimg + '\'' +
                ", onsell=" + onsell +
                '}';
    }
}
