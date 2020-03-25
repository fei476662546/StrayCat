package com.entity;

/**
 * Create by mysteriousTime
 * time on 2020-3-7  11:07
 */
public class AdoptInfo {
    private Integer id;
    private Integer user_id;
    private Integer pet_id;
    private String time;

    public AdoptInfo() {
    }


    public AdoptInfo(Integer id, Integer user_id, Integer pet_id, String time) {
        this.id = id;
        this.user_id = user_id;
        this.pet_id = pet_id;
        this.time = time;
    }

    public Integer getPet_id() {
        return pet_id;
    }

    @Override
    public String toString() {
        return "AdoptInfo{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", pet_id=" + pet_id +
                ", time='" + time + '\'' +
                '}';
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
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



    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

}
