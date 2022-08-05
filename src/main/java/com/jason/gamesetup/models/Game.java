package com.jason.gamesetup.models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "games")
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date gameDate;
    private String homeTeam;
    private String h1;
    private String h1p;
    private String h1dh;
    private String h1dhp;
    private String h2;
    private String h2p;
    private String h3;
    private String h3p;
    private String h4;
    private String h4p;
    private String h5;
    private String h5p;
    private String h6;
    private String h6p;
    private String h7;
    private String h7p;
    private String h8;
    private String h8p;
    private String h9;
    private String h9p;
    private String hStartingPitcher;
    private String awayTeam;
    private String a1;
    private String a1p;
    private String a1dh;
    private String a1dhp;
    private String a2;
    private String a2p;
    private String a3;
    private String a3p;
    private String a4;
    private String a4p;
    private String a5;
    private String a5p;
    private String a6;
    private String a6p;
    private String a7;
    private String a7p;
    private String a8;
    private String a8p;
    private String a9;
    private String a9p;
    private String aStartingPitcher;
    private String ballpark;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="team_id")
    private Team team;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    public Game() {}

    public Game(Date gameDate, String homeTeam, String h1, String h1p, String h1dh, String h1dhp, String h2, String h2p, String h3, String h3p, String h4, String h4p, String h5, String h5p, String h6, String h6p, String h7, String h7p, String h8, String h8p, String h9, String h9p, String hStartingPitcher, String awayTeam, String a1, String a1p, String a1dh, String a1dhp, String a2, String a2p, String a3, String a3p, String a4, String a4p, String a5, String a5p, String a6, String a6p, String a7, String a7p, String a8, String a8p, String a9, String a9p, String aStartingPitcher, String ballpark, Team team) {
        this.gameDate = gameDate;
        this.homeTeam = homeTeam;
        this.h1 = h1;
        this.h1p = h1p;
        this.h1dh = h1dh;
        this.h1dhp = h1dhp;
        this.h2 = h2;
        this.h2p = h2p;
        this.h3 = h3;
        this.h3p = h3p;
        this.h4 = h4;
        this.h4p = h4p;
        this.h5 = h5;
        this.h5p = h5p;
        this.h6 = h6;
        this.h6p = h6p;
        this.h7 = h7;
        this.h7p = h7p;
        this.h8 = h8;
        this.h8p = h8p;
        this.h9 = h9;
        this.h9p = h9p;
        this.hStartingPitcher = hStartingPitcher;
        this.awayTeam = awayTeam;
        this.a1 = a1;
        this.a1p = a1p;
        this.a1dh = a1dh;
        this.a1dhp = a1dhp;
        this.a2 = a2;
        this.a2p = a2p;
        this.a3 = a3;
        this.a3p = a3p;
        this.a4 = a4;
        this.a4p = a4p;
        this.a5 = a5;
        this.a5p = a5p;
        this.a6 = a6;
        this.a6p = a6p;
        this.a7 = a7;
        this.a7p = a7p;
        this.a8 = a8;
        this.a8p = a8p;
        this.a9 = a9;
        this.a9p = a9p;
        this.aStartingPitcher = aStartingPitcher;
        this.ballpark = ballpark;
        this.team = team;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGameDate() {
        return gameDate;
    }

    public void setGameDate(Date gameDate) {
        this.gameDate = gameDate;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getH1() {
        return h1;
    }

    public void setH1(String h1) {
        this.h1 = h1;
    }

    public String getH1p() {
        return h1p;
    }

    public void setH1p(String h1p) {
        this.h1p = h1p;
    }

    public String getH1dh() {
        return h1dh;
    }

    public void setH1dh(String h1dh) {
        this.h1dh = h1dh;
    }

    public String getH1dhp() {
        return h1dhp;
    }

    public void setH1dhp(String h1dhp) {
        this.h1dhp = h1dhp;
    }

    public String getH2() {
        return h2;
    }

    public void setH2(String h2) {
        this.h2 = h2;
    }

    public String getH2p() {
        return h2p;
    }

    public void setH2p(String h2p) {
        this.h2p = h2p;
    }

    public String getH3() {
        return h3;
    }

    public void setH3(String h3) {
        this.h3 = h3;
    }

    public String getH3p() {
        return h3p;
    }

    public void setH3p(String h3p) {
        this.h3p = h3p;
    }

    public String getH4() {
        return h4;
    }

    public void setH4(String h4) {
        this.h4 = h4;
    }

    public String getH4p() {
        return h4p;
    }

    public void setH4p(String h4p) {
        this.h4p = h4p;
    }

    public String getH5() {
        return h5;
    }

    public void setH5(String h5) {
        this.h5 = h5;
    }

    public String getH5p() {
        return h5p;
    }

    public void setH5p(String h5p) {
        this.h5p = h5p;
    }

    public String getH6() {
        return h6;
    }

    public void setH6(String h6) {
        this.h6 = h6;
    }

    public String getH6p() {
        return h6p;
    }

    public void setH6p(String h6p) {
        this.h6p = h6p;
    }

    public String getH7() {
        return h7;
    }

    public void setH7(String h7) {
        this.h7 = h7;
    }

    public String getH7p() {
        return h7p;
    }

    public void setH7p(String h7p) {
        this.h7p = h7p;
    }

    public String getH8() {
        return h8;
    }

    public void setH8(String h8) {
        this.h8 = h8;
    }

    public String getH8p() {
        return h8p;
    }

    public void setH8p(String h8p) {
        this.h8p = h8p;
    }

    public String getH9() {
        return h9;
    }

    public void setH9(String h9) {
        this.h9 = h9;
    }

    public String getH9p() {
        return h9p;
    }

    public void setH9p(String h9p) {
        this.h9p = h9p;
    }

    public String gethStartingPitcher() {
        return hStartingPitcher;
    }

    public void sethStartingPitcher(String hStartingPitcher) {
        this.hStartingPitcher = hStartingPitcher;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public String getA1() {
        return a1;
    }

    public void setA1(String a1) {
        this.a1 = a1;
    }

    public String getA1p() {
        return a1p;
    }

    public void setA1p(String a1p) {
        this.a1p = a1p;
    }

    public String getA1dh() {
        return a1dh;
    }

    public void setA1dh(String a1dh) {
        this.a1dh = a1dh;
    }

    public String getA1dhp() {
        return a1dhp;
    }

    public void setA1dhp(String a1dhp) {
        this.a1dhp = a1dhp;
    }

    public String getA2() {
        return a2;
    }

    public void setA2(String a2) {
        this.a2 = a2;
    }

    public String getA2p() {
        return a2p;
    }

    public void setA2p(String a2p) {
        this.a2p = a2p;
    }

    public String getA3() {
        return a3;
    }

    public void setA3(String a3) {
        this.a3 = a3;
    }

    public String getA3p() {
        return a3p;
    }

    public void setA3p(String a3p) {
        this.a3p = a3p;
    }

    public String getA4() {
        return a4;
    }

    public void setA4(String a4) {
        this.a4 = a4;
    }

    public String getA4p() {
        return a4p;
    }

    public void setA4p(String a4p) {
        this.a4p = a4p;
    }

    public String getA5() {
        return a5;
    }

    public void setA5(String a5) {
        this.a5 = a5;
    }

    public String getA5p() {
        return a5p;
    }

    public void setA5p(String a5p) {
        this.a5p = a5p;
    }

    public String getA6() {
        return a6;
    }

    public void setA6(String a6) {
        this.a6 = a6;
    }

    public String getA6p() {
        return a6p;
    }

    public void setA6p(String a6p) {
        this.a6p = a6p;
    }

    public String getA7() {
        return a7;
    }

    public void setA7(String a7) {
        this.a7 = a7;
    }

    public String getA7p() {
        return a7p;
    }

    public void setA7p(String a7p) {
        this.a7p = a7p;
    }

    public String getA8() {
        return a8;
    }

    public void setA8(String a8) {
        this.a8 = a8;
    }

    public String getA8p() {
        return a8p;
    }

    public void setA8p(String a8p) {
        this.a8p = a8p;
    }

    public String getA9() {
        return a9;
    }

    public void setA9(String a9) {
        this.a9 = a9;
    }

    public String getA9p() {
        return a9p;
    }

    public void setA9p(String a9p) {
        this.a9p = a9p;
    }

    public String getaStartingPitcher() {
        return aStartingPitcher;
    }

    public void setaStartingPitcher(String aStartingPitcher) {
        this.aStartingPitcher = aStartingPitcher;
    }

    public String getBallpark() {
        return ballpark;
    }

    public void setBallpark(String ballpark) {
        this.ballpark = ballpark;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }
}
