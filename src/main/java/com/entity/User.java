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
    private Pet pet;
    private Integer pet_id ;//宠物的id
    private Remind remind;
    private int count = 0;//提醒个数
    private int verification_id ;

    public int getVerification_id() {
        return verification_id;
    }

    public void setVerification_id(int verification_id) {
        this.verification_id = verification_id;
    }

    private Verification verification;//实名验证

    public Verification getVerification() {
        return verification;
    }

    public void setVerification(Verification verification) {
        this.verification = verification;
    }

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }


    public User(Integer id, String username, String relName, String password, Integer age, Integer sex, String tel, String email, String pic, String address, String message, int state, String remark, Pet pet, Integer pet_id, Remind remind, int count, int verification_id, Verification verification) {
        this.id = id;
        this.username = username;
        this.relName = relName;
        this.password = password;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.email = email;
        this.pic = pic;
        this.address = address;
        this.message = message;
        this.state = state;
        this.remark = remark;
        this.pet = pet;
        this.pet_id = pet_id;
        this.remind = remind;
        this.count = count;
        this.verification_id = verification_id;
        this.verification = verification;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Remind getRemind() {
        return remind;
    }

    public void setRemind(Remind remind) {
        this.remind = remind;
    }



    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }


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
                ", relName='" + relName + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", pic='" + pic + '\'' +
                ", address='" + address + '\'' +
                ", message='" + message + '\'' +
                ", state=" + state +
                ", remark='" + remark + '\'' +
                ", pet=" + pet +
                ", pet_id=" + pet_id +
                ", remind=" + remind +
                ", count=" + count +
                ", verification_id=" + verification_id +
                ", verification=" + verification +
                '}';
    }
}
