package com.jason.gamesetup.services;

import com.jason.gamesetup.models.Game;
import com.jason.gamesetup.models.Player;
import com.jason.gamesetup.repositories.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;

    public List<Game> getAll() {
        return gameRepository.findAll();
    }

    public Game create(Game newGame) {
        return gameRepository.save(newGame);
    }

    public Game getById(Long id) {

        return gameRepository.findById(id).orElse(null);
    }
    public Game update(Game editGame) {
        return gameRepository.save(editGame);
    }
    public void deleteById(Long id) {
        gameRepository.deleteById(id);
    }

    //new
//    public Game getById(Long id) {
//        return gameRepository.findById(id).orElse(null);
//    }
}
