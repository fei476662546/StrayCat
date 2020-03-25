package com.entity;


import jdk.nashorn.internal.ir.IdentNode;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:46
 */
public class Adopt {
    private Integer id;
    private Integer user_id;
    private Integer pet_id;
    private String time;
    private String tel;
    private String address;
    private String reason;
    private Integer apply;//1为已通过，0为未通过，-1为拒绝
    private String relName;
    public Adopt() {
    }

    public String getRelName() {
        return relName;
    }

    public void setRelName(String relName) {
        this.relName = relName;
    }


    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public Adopt(Integer id, Integer user_id, Integer pet_id, String time, String tel, String address, String reason, Integer apply, String relName) {
        this.id = id;
        this.user_id = user_id;
        this.pet_id = pet_id;
        this.time = time;
        this.tel = tel;
        this.address = address;
        this.reason = reason;
        this.apply = apply;
        this.relName = relName;
    }

    @Override
    public String toString() {
        return "Adopt{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", pet_id='" + pet_id + '\'' +
                ", time='" + time + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", reason='" + reason + '\'' +
                ", apply=" + apply +
                ", relName='" + relName + '\'' +
                '}';
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getId() {
        return id;
    }



    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }




    public Integer getApply() {
        return apply;
    }

    public void setApply(Integer apply) {
        this.apply = apply;
    }

}
