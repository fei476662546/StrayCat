package com.mapper;

import com.entity.Team;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  14:00
 */
public interface TeamMapper {
    int addTeamApply(Team team);
    List<Team> findAllTeamApply ();
    int delTeamById(Integer id);
    Team getTeamById(Integer id);
    int updateTeam(Team team);
}
