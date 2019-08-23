package com.entity;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:45
 */
public class User {
   private Integer id;
   private String username;
   private String relName;
   private String password;
   private Integer age;
   private Integer sex;//0为女，1为男
    private String tel;
    private String email;
    private  String pic;
    private String address;
    private String message;
    private int state;
    private String remark;

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getRelName() {
        return relName;
    }

    public void setRelName(String relName) {
        this.relName = relName;
    }

    public User() {
    }
/**
 * 保存领养信息
 * */
    public User(String username,String relName,  Integer sex, String tel, String email, String address, String remark) {
       this.username=username;
        this.relName = relName;
        this.sex = sex;
        this.tel = tel;
        this.email = email;
        this.address = address;
        this.state=1;
        this.remark = remark;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(Integer id, String username, String password, Integer age, Integer sex, String tel, String email, String pic, String address, String message, int state) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.email = email;
        this.pic = pic;
        this.address = address;
        this.message = message;
        this.state = state;
    }

    public User(String username, String password, Integer age, Integer sex, String tel, String email, String pic, String address, String message, int state) {
        this.username = username;
        this.password = password;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.email = email;
        this.pic = pic;
        this.address = address;
        this.message = message;
        this.state = state;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", pic='" + pic + '\'' +
                ", address='" + address + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
