package com.entity;

import java.util.Date;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:46
 */
public class Adopt {
    private Integer id;
    private Integer user_id;
    private String petName;
    private Date time;
    private Integer apply;//1为已通过，0为未通过，-1为拒绝

    public Adopt() {
    }

    public Adopt(Integer id, Integer user_id, String petName, Date time, Integer apply) {
        this.id = id;
        this.user_id = user_id;
        this.petName = petName;
        this.time = time;
        this.apply = apply;
    }

    public Integer getId() {
        return id;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
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


    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getApply() {
        return apply;
    }

    public void setApply(Integer apply) {
        this.apply = apply;
    }

    @Override
    public String toString() {
        return "Adopt{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", petName=" + petName +
                ", time=" + time +
                ", apply=" + apply +
                '}';
    }
}
