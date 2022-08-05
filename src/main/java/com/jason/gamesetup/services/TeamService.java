package com.jason.gamesetup.services;

import com.jason.gamesetup.models.Game;
import com.jason.gamesetup.models.Team;
import com.jason.gamesetup.repositories.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Service
public class TeamService {

    @Autowired
    private TeamRepository teamRepository;

    public List<Team> getAll(){
        return teamRepository.findAll();
    }

    public Team create(Team newTeam) {
        return teamRepository.save(newTeam);
    }

    public Team getById(Long id) {

        return teamRepository.findById(id).orElse(null);
    }
    public Team update(Team editTeam) {
        return teamRepository.save(editTeam);
    }
    public void deleteById(Long id) {
        teamRepository.deleteById(id);
    }

    public void assignGame(Team team, Game game) {

        List<Game> games=team.getGames();
        games.add(game);
        teamRepository.save(team);
    }
}
