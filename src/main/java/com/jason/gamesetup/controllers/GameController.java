package com.jason.gamesetup.controllers;

import com.jason.gamesetup.models.Game;
import com.jason.gamesetup.models.Player;
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
public class GameController {

    @Autowired
    private PlayerService playerService;

    @Autowired
    private TeamService teamService;

    @Autowired
    private GameService gameService;

    @GetMapping("/games")
    public String players(Model model) {
        model.addAttribute("allGames", gameService.getAll());
        model.addAttribute("allPlayers", playerService.getAll());
        model.addAttribute("allTeams", teamService.getAll());

        return "games.jsp";
    }

    @GetMapping("/games/new")
    public String newGame(@ModelAttribute("newGame") Game newGame, Model model) {
        model.addAttribute("allGames", gameService.getAll());
        model.addAttribute("allTeams", teamService.getAll());
        model.addAttribute("allPlayers", playerService.getAll());
        model.addAttribute("team", teamService.getAll());

        return "newGame.jsp";
    }

    @PostMapping("/games/create")
    public String createGame(@ModelAttribute("newGame") Game newGame, BindingResult result) {

        if(result.hasErrors()) {
            return "newGame.jsp";
        }

        gameService.create(newGame);


        return "redirect:/games";
    }

    //	Method updated to get all the trainers from DB and show it on profile page
    @GetMapping("/games/{id}")
    public String profile(@PathVariable Long id, Model model) {
        model.addAttribute("allGames", gameService.getAll());
        model.addAttribute("game", gameService.getById(id));
        model.addAttribute("allPlayers", playerService.getAll());
        model.addAttribute("player", playerService.getById(id));
        model.addAttribute("allTeams", teamService.getAll());
        model.addAttribute("team", teamService.getById(id));

        return "viewGame.jsp";

    }

    // rendering the update page
    @GetMapping("/games/{id}/edit")
    public String editGame(@PathVariable Long id, @ModelAttribute("editGame") Game editGame, Model model) {
        model.addAttribute("game", gameService.getById(id));
        model.addAttribute("player", playerService.getById(id));
        model.addAttribute("team", teamService.getById(id));

        return "editGame.jsp";
    }
    @PutMapping("/games/{id}/update")
    public String updateGame(@ModelAttribute("editGame")Game editGame, BindingResult result, Model model) {

        if(result.hasErrors()) {
            model.addAttribute(editGame);
            return "editGame.jsp";
        }
        gameService.update(editGame);
        return "redirect:/games";

    }

    @DeleteMapping("/games/{id}/destroy")
    public String destroyGame(@PathVariable Long id) {

        gameService.deleteById(id);

        return "redirect:/games";
    }

    //Assign Game
    @PostMapping("/assign/{id}")
    public String assign(@PathVariable Long id, @RequestParam Long gameId) {

        Team team=teamService.getById(id);
        Game game=gameService.getById(gameId);
        teamService.assignGame(team, game);

        return "redirect:/teams/{id}";
    }
}
