package com.jason.gamesetup.models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "players")
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
    private String playerPosition;
    private int jerseyNumber;
    private boolean throwingHand;
    private boolean hittingHand;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="team_id")
    private Team team;

    public Player() {}

    public Player(String firstName, String lastName, String playerPosition, int jerseyNumber, boolean throwingHand, boolean hittingHand, Team team) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.playerPosition = playerPosition;
        this.jerseyNumber = jerseyNumber;
        this.throwingHand = throwingHand;
        this.hittingHand = hittingHand;
        this.team = team;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPlayerPosition() {
        return playerPosition;
    }

    public void setPlayerPosition(String playerPosition) {
        this.playerPosition = playerPosition;
    }

    public int getJerseyNumber() {
        return jerseyNumber;
    }

    public void setJerseyNumber(int jerseyNumber) {
        this.jerseyNumber = jerseyNumber;
    }

    public boolean isThrowingHand() {
        return throwingHand;
    }

    public void setThrowingHand(boolean throwingHand) {
        this.throwingHand = throwingHand;
    }

    public boolean isHittingHand() {
        return hittingHand;
    }

    public void setHittingHand(boolean hittingHand) {
        this.hittingHand = hittingHand;
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

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }

    public String fullName() {
        return this.firstName + " " + this.lastName;
    }
}