package com.entity;

import java.util.Date;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:46
 */
public class Adopt {
    private Integer id;
    private Integer user_id;
    private Integer pet_id;
    private Date time;
    private Integer type;//1为到点带走，2为快递邮寄

    public Adopt() {
    }

    public Adopt(Integer id, Integer user_id, Integer pet_id, Date time, Integer type) {
        this.id = id;
        this.user_id = user_id;
        this.pet_id = pet_id;
        this.time = time;
        this.type = type;
    }

    @Override
    public String toString() {
        return "Adopt{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", pet_id=" + pet_id +
                ", time=" + time +
                ", type=" + type +
                '}';
    }
}
