package com.entity;

/**
 * Create by mysteriousTime
 * time on 2019/8/30  23:52
 */
public class Team {
    private String id;
    private String team_name;
    private String team_email;
    private String team_reason;
    private String team_tel;
    private String team_message;
    private String time;
    private Integer state;

    public Team() {
    }

    public Team(String id, String team_name, String team_email, String team_reason, String team_tel, String team_message, String time,Integer state) {
        this.id = id;
        this.team_name = team_name;
        this.team_email = team_email;
        this.team_reason = team_reason;
        this.team_tel = team_tel;
        this.team_message = team_message;
        this.time = time;
        this.state=state;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTeam_name() {
        return team_name;
    }

    public void setTeam_name(String team_name) {
        this.team_name = team_name;
    }

    public String getTeam_email() {
        return team_email;
    }

    public void setTeam_email(String team_email) {
        this.team_email = team_email;
    }

    public String getTeam_reason() {
        return team_reason;
    }

    public void setTeam_reason(String team_reason) {
        this.team_reason = team_reason;
    }

    public String getTeam_tel() {
        return team_tel;
    }

    public void setTeam_tel(String team_tel) {
        this.team_tel = team_tel;
    }

    public String getTeam_message() {
        return team_message;
    }

    public void setTeam_message(String team_message) {
        this.team_message = team_message;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Team{" +
                "id='" + id + '\'' +
                ", team_name='" + team_name + '\'' +
                ", team_email='" + team_email + '\'' +
                ", team_reason='" + team_reason + '\'' +
                ", team_tel='" + team_tel + '\'' +
                ", team_message='" + team_message + '\'' +
                ", team_time='" + time + '\'' +
                '}';
    }
}
