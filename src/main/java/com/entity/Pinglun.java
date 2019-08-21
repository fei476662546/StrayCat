package com.entity;

import java.util.Date;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:45
 */
public class Pinglun {
    private Integer id;
    private Integer user_id;
    private String words;
    private Date time;
    private String comObject;

    public Pinglun() {
    }

    public Pinglun(Integer id, Integer user_id, String words, Date time, String comObject) {
        this.id = id;
        this.user_id = user_id;
        this.words = words;
        this.time = time;
        this.comObject = comObject;
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

    public String getWords() {
        return words;
    }

    public void setWords(String words) {
        this.words = words;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getComObject() {
        return comObject;
    }

    public void setComObject(String comObject) {
        this.comObject = comObject;
    }

    @Override
    public String toString() {
        return "Pinglun{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", words='" + words + '\'' +
                ", time=" + time +
                ", comObject='" + comObject + '\'' +
                '}';
    }
}
