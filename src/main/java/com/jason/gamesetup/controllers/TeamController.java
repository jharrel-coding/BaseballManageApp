package com.jason.gamesetup.controllers;

import com.jason.gamesetup.models.Game;
import com.jason.gamesetup.models.Team;
import com.jason.gamesetup.services.GameService;
import com.jason.gamesetup.services.PlayerService;
import com.jason.gamesetup.services.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Controller
public class TeamController {

    @Autowired
    private PlayerService playerService;

    @Autowired
    private TeamService teamService;

    @Autowired
    private GameService gameService;

    @GetMapping("/teams")
    public String teams(Model model) {
        model.addAttribute("allTeams", teamService.getAll());
        return "teams.jsp";
    }

    @GetMapping("/teams/new")
    public String newTeam(@ModelAttribute("newTeam") Team newTeam, Model model) {
        model.addAttribute("allTeams", teamService.getAll());

        return "newTeam.jsp";
    }
    @PostMapping("/teams/create")
    public String createTeam(@ModelAttribute("newTeam") Team newTeam, BindingResult result) {

        if(result.hasErrors()) {
            return "newTeam.jsp";
        }

        teamService.create(newTeam);


        return "redirect:/teams";
    }

    //	Method updated to get all the trainers from DB and show it on profile page
    @GetMapping("/teams/{id}")
    public String profile(@PathVariable Long id, Model model) {
        model.addAttribute("team", teamService.getById(id));
        model.addAttribute("player", playerService.getById(id));
        model.addAttribute("allPlayers", playerService.getAll());

        return "teamProfile.jsp";

    }

    // rendering the update page
    @GetMapping("/teams/{id}/edit")
    public String editTeam(@PathVariable Long id, @ModelAttribute("editTeam") Team editTeam, Model model) {
        model.addAttribute("player", playerService.getById(id));
        model.addAttribute("team", teamService.getById(id));

        return "editTeam.jsp";
    }
    @PutMapping("/teams/{id}/update")
    public String updateTeam(@ModelAttribute("editTeam")Team editTeam, BindingResult result, Model model) {

        if(result.hasErrors()) {
            model.addAttribute(editTeam);
            return "editTeam.jsp";
        }
        teamService.update(editTeam);
        return "redirect:/teams";

    }

    @DeleteMapping("/teams/{id}/destroy")
    public String destroyTeam(@PathVariable Long id) {

        teamService.deleteById(id);

        return "redirect:/teams";
    }

//    //Assign Game
//    @PostMapping("/assign/{id}")
//    public String assign(@PathVariable Long id, @RequestParam Long gameId) {
//
//        Team team=teamService.getById(id);
//        Game game=gameService.getById(gameId);
//        teamService.assignGame(team, game);
//
//        return "redirect:/teams/{id}";
//    }
}