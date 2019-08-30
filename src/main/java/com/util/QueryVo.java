package com.util;

import com.entity.Pet;
import com.entity.Pinglun;
import com.entity.User;

import java.util.List;

/**
 * @author yyh
 * @date 2019/8/7-10:35
 */
public class QueryVo {
    private int[]ids;
    private List<Pinglun> pingluns;
    private List<User> users;
    private List<Pet> pets;

    public List<Pinglun> getPingluns() {
        return pingluns;
    }

    public void setPingluns(List<Pinglun> pingluns) {
        this.pingluns = pingluns;
    }

    public List<Pet> getPets() {
        return pets;
    }

    public void setPets(List<Pet> pets) {
        this.pets = pets;
    }

    public int[] getIds() {
        return ids;
    }

    public void setIds(int[] ids) {
        this.ids = ids;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
