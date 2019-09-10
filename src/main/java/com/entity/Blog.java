package com.entity;

/**
 * Create by mysteriousTime
 * time on 2019/9/6  11:06
 */
public class Blog {
    private Integer id;
    private String title;
    private String month;
    private String day;
    private String context;

    public Blog() {
    }

    public Blog(Integer id, String title, String month, String day, String context) {
        this.id = id;
        this.title = title;
        this.month = month;
        this.day = day;
        this.context = context;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", month='" + month + '\'' +
                ", day='" + day + '\'' +
                ", context='" + context + '\'' +
                '}';
    }
}
