package com.entity;

/**
 * Create by mysteriousTime
 * time on 2020-3-13  13:53
 */
public class Zan_pet {
    private Integer id;
    private Integer Obj;
    private Integer user_id;
    private String time;

    public Zan_pet() {
    }

    public Zan_pet(Integer id, Integer obj, Integer user_id, String time) {
        this.id = id;
        Obj = obj;
        this.user_id = user_id;
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getObj() {
        return Obj;
    }

    public void setObj(Integer obj) {
        Obj = obj;
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

    @Override
    public String toString() {
        return "Zan_pet{" +
                "id=" + id +
                ", Obj=" + Obj +
                ", user_id=" + user_id +
                ", time='" + time + '\'' +
                '}';
    }
}
