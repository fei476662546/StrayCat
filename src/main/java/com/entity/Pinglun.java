package com.entity;

import java.util.Arrays;
import java.util.Date;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:45
 */
public class Pinglun {
    private Integer id;
    private String img;//评论用户头像
    private String replyName;//评论人用户名
    private String beReplyName;//回复人用户名
    private String content;
    private String time;
    private String pinglunObj;//评论对象
    private Pinglun[] relyBody;
    private Integer user_id;
    private Integer pet_id;
    private Integer zan;//评论点赞个数

    public Pinglun() {
    }

    public Integer getZan() {
        return zan;
    }

    public void setZan(Integer zan) {
        this.zan = zan;
    }

    public Pinglun(Integer id, String img, String replyName, String beReplyName, String content, String time, String pinglunObj, Pinglun[] relyBody, Integer user_id, Integer pet_id, Integer zan) {
        this.id = id;
        this.img = img;
        this.replyName = replyName;
        this.beReplyName = beReplyName;
        this.content = content;
        this.time = time;
        this.pinglunObj = pinglunObj;
        this.relyBody = relyBody;
        this.user_id = user_id;
        this.pet_id = pet_id;
        this.zan = zan;
    }

    public String getPinglunObj() {
        return pinglunObj;
    }

    public void setPinglunObj(String pinglunObj) {
        this.pinglunObj = pinglunObj;
    }

    public String getReplyName() {
        return replyName;
    }

    public void setReplyName(String replyName) {
        this.replyName = replyName;
    }

    public String getBeReplyName() {
        return beReplyName;
    }

    public void setBeReplyName(String beReplyName) {
        this.beReplyName = beReplyName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Pinglun[] getRelyBody() {
        return relyBody;
    }

    public void setRelyBody(Pinglun[] relyBody) {
        this.relyBody = relyBody;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getPet_id() {
        return pet_id;
    }

    @Override
    public String toString() {
        return "Pinglun{" +
                "id=" + id +
                ", img='" + img + '\'' +
                ", replyName='" + replyName + '\'' +
                ", beReplyName='" + beReplyName + '\'' +
                ", content='" + content + '\'' +
                ", time='" + time + '\'' +
                ", pinglunObj='" + pinglunObj + '\'' +
                ", relyBody=" + Arrays.toString(relyBody) +
                ", user_id=" + user_id +
                ", pet_id=" + pet_id +
                '}';
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

}
