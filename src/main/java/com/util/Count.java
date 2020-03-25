package com.util;

/**
 * Create by mysteriousTime
 * time on 2020-3-10  17:15
 */
public class Count {
    private Integer count = 0;//初始个数

    public Count() {
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    //消息加一个
    public  Integer count(){
        count++;
        return count;
    }
    //消息减一
    public  Integer Del_Count(){
        count--;
        return count;
    }

}
