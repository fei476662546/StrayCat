package com.service;

import com.entity.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  14:00
 */

public interface TeamService {
    int addTeamApply(Team team);
    List<Team> findAllTeamApply ();
    int delTeamById(Integer id);
    Team getTeamById(Integer id);
    int updateTeam(Team team);

}
