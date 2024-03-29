package com.woohsi.bookfriend.po;

/**
 * 订单实体类
 */
public class Order {
    private Integer oid;//订单编号
    private Integer bkid;//书籍id
    private Integer buid;//买家id
    private Integer suid;//卖家id

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getBkid() {
        return bkid;
    }

    public void setBid(Integer bkid) {
        this.bkid = bkid;
    }

    public Integer getBuid() {
        return buid;
    }

    public void setBuid(Integer buid) {
        this.buid = buid;
    }

    public Integer getSuid() {
        return suid;
    }

    public void setSuid(Integer suid) {
        this.suid = suid;
    }
}
