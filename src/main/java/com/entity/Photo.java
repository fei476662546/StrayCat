package com.entity;

/**
 * Create by mysteriousTime
 * time on 2020-3-20  20:03
 */
public class Photo {
    private Integer id;
    private Integer user_id;
    private Integer pet_id;
    private String photo;

    public Photo() {
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

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Photo(Integer id, Integer user_id, Integer pet_id, String photo) {
        this.id = id;
        this.user_id = user_id;
        this.pet_id = pet_id;
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Photo{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", pet_id=" + pet_id +
                ", Photo='" + photo + '\'' +
                '}';
    }
}
