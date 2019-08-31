package com.service.impl;

import com.entity.Team;
import com.mapper.TeamMapper;
import com.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  14:02
 */
@Service
public class TeamServiceImpl implements TeamService {
    @Autowired
    private TeamMapper teamMapper;
    @Override
    public int addTeamApply(Team team) {
        return teamMapper.addTeamApply(team);
    }

    @Override
    public List<Team> findAllTeamApply() {
        return teamMapper.findAllTeamApply();
    }

    @Override
    public int delTeamById(Integer id) {
        return teamMapper.delTeamById(id);
    }

    @Override
    public Team getTeamById(Integer id) {
        return teamMapper.getTeamById(id);
    }

    @Override
    public int updateTeam(Team team) {
        return teamMapper.updateTeam(team);
    }
}
