package com.controller;

import com.entity.Team;
import com.service.AdmitService;
import com.service.TeamService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  13:55
 */
@Controller
@RequestMapping("/team")
public class TeamController {
    @Autowired
    private TeamService teamService;
    @RequestMapping("/teamApply")
    public String apply(Team team, Model model){
        if (teamService.addTeamApply(team)>0){
            model.addAttribute("teamMsg", "信息提交成功");
            return "team";
        }
        model.addAttribute("teamMsg", "信息提交失败");
        return "team";
    }
    @RequestMapping("/teamList")
    public String list(Model model){
        List<Team> teams=teamService.findAllTeamApply();
        if (teams!=null){
            model.addAttribute("teamList",teams);
            return "teamMessage";
        }
        System.out.println("列表申请team失败");
        return "teamMessage";
    }
    @RequestMapping("/delete")
    public String delUser(Integer id ) {
        System.out.println("进入删除阶段");
        if (teamService.delTeamById(id)> 0) {
            System.out.println("删除成功");
            return "redirect:/adopt/adoptApply";
        }
        System.out.println("删除失败");

        return "redirect:/team/teamList";
    }

    @RequestMapping("/edit")
    public String edit(Integer id,Model model) {
        Team team = teamService.getTeamById(id);
        if (team != null) {

            return "forward:/team/teamList";
        }
        model.addAttribute("teamMsg", "编辑失败");
        System.out.println("编辑失败");
        return "forward:/team/teamList";
    }

    @RequestMapping("/update")
    public String updateAdopt(Team team,Model model) {
        if (teamService.updateTeam(team) > 0) {
            model.addAttribute("teamMsg", "编辑成功");
            return "redirect:/team/teamList";
        }
        model.addAttribute("teamMsg", "编辑失败");
        System.out.println("编辑失败");
        return "redirect:/team/teamList";
    }
    @RequestMapping("/applyOK")
    public String applyOK(Integer id, HttpServletRequest request) {
        Team team = teamService.getTeamById(id);
        System.out.println("----"+team);
       team.setState(1);
        if (teamService.updateTeam(team)>0){
            request.setAttribute("applyResult", "您已通过审核，请等待我们与你联系");
            return "redirect:/adopt/adoptApply";
        }
        request.setAttribute("teamMsg", "发生错误");
        System.out.println("审核失败了,数据库发生错误？");
        return "redirect:/team/teamList";
    }
    @RequestMapping("/applyNO")
    public String applyNO(Integer id, HttpServletRequest request) {
        Team team = teamService.getTeamById(id);
        System.out.println("----"+team);
        team.setState(-1);
        if (teamService.updateTeam(team)>0){
            request.setAttribute("applyResult", "你的条件不符");
            return "redirect:/adopt/adoptApply";
        }
        request.setAttribute("teamMsg", "发生错误");
        System.out.println("审核拒绝失败了,数据库发生错误？");
        return "redirect:/team/teamList";
    }
}
