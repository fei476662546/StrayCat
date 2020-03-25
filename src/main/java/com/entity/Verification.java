package com.entity;

/**
 * Create by mysteriousTime
 * time on 2020-3-9  14:39
 */
public class Verification {
    private Integer id;
    private Integer user_id;
    private String relName;
    private String tel;
    private String id_card;
    private String address;
    private String id_card_photo;
    public Verification() {
    }

    public Verification(Integer id, Integer user_id, String relName, String tel, String id_card, String address, String id_card_photo) {
        this.id = id;
        this.user_id = user_id;
        this.relName = relName;
        this.tel = tel;
        this.id_card = id_card;
        this.address = address;
        this.id_card_photo = id_card_photo;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
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

    public String getRelName() {
        return relName;
    }

    public void setRelName(String relName) {
        this.relName = relName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getId_card_photo() {
        return id_card_photo;
    }

    public void setId_card_photo(String id_card_photo) {
        this.id_card_photo = id_card_photo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Verification{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", relName='" + relName + '\'' +
                ", tel='" + tel + '\'' +
                ", id_card='" + id_card + '\'' +
                ", address='" + address + '\'' +
                ", id_card_photo='" + id_card_photo + '\'' +
                '}';
    }
}
