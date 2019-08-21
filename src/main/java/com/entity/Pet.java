package com.entity;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:45
 */
public class Pet {
    private Integer id;
    private String petName;
    private Integer age;
    private Integer sex;//0为母，1为公
    private String pic;
    private Integer state;//0为未被领养，1为已被领养

    public Pet(Integer id, String petName, Integer age, Integer sex, String pic, Integer state) {
        this.id = id;
        this.petName = petName;
        this.age = age;
        this.sex = sex;
        this.pic = pic;
        this.state = state;
    }

    public Pet(String petName, Integer age) {
        this.petName = petName;
        this.age = age;
    }

    public Pet(String petName, Integer age, Integer sex, String pic, Integer state) {
        this.petName = petName;
        this.age = age;
        this.sex = sex;
        this.pic = pic;
        this.state = state;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "id=" + id +
                ", petName='" + petName + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", pic='" + pic + '\'' +
                ", state=" + state +
                '}';
    }
}
