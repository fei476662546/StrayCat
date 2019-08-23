package com.entity;

/**
 * Create by mysteriousTime
 * time on 2019/8/23  10:29
 */
public class AdoptUser {
    private Integer id;
    private String relName;
    private String sex;
    private String tel;
    private String email;
    private String address;
    private String remark;

    public AdoptUser(String relName, String sex, String tel, String email, String address, String remark) {
        this.relName = relName;
        this.sex = sex;
        this.tel = tel;
        this.email = email;
        this.address = address;
        this.remark = remark;
    }

    public AdoptUser() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRelName() {
        return relName;
    }

    public void setRelName(String relName) {
        this.relName = relName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "AdoptUser{" +
                "relName='" + relName + '\'' +
                ", sex='" + sex + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
