package com.entity;

/**
 * Create by mysteriousTime
 * time on 2020-3-8  20:50
 */
public class Remind {
    private Integer id;
    private Integer user_id;
    private String comment;//消息内容
    private Integer count;//消息个数
    private String time;//时间
    private String url;//消息路径
    private User user;//消息人
    private Admit admit;//发消息的管理员

    public Remind() {
    }

    public Remind(Integer user_id, String comment,  String time) {
        this.user_id = user_id;
        this.comment = comment;

        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Admit getAdmit() {
        return admit;
    }

    public void setAdmit(Admit admit) {
        this.admit = admit;
    }

    public Remind(int id, int user_id, String comment, Integer count, String time, String url, User user, Admit admit) {
        this.id = id;
        this.user_id = user_id;
        this.comment = comment;
        this.count = count;
        this.time = time;
        this.url = url;
        this.user = user;
        this.admit = admit;
    }

    @Override
    public String toString() {
        return "Remind{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", comment='" + comment + '\'' +
                ", count=" + count +
                ", time='" + time + '\'' +
                ", url='" + url + '\'' +
                ", user=" + user +
                ", admit=" + admit +
                '}';
    }
}
