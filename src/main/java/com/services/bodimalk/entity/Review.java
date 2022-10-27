package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;

@Entity
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 1, nullable = false)
    private String state;
    @NotNull
    private Date date;
    private String description;
    private double rate;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarder",referencedColumnName = "id", nullable = false)
    private User boarder;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "examiner", referencedColumnName = "id")
    private User examiner;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarding_place", referencedColumnName = "id", nullable = false)
    private BoardingPlace boardingPlace;

    public Review() {
        this.rate = 0;
    }

    public Review(Long id, String state, Date date, String description, double rate, User boarder, User examiner, BoardingPlace boardingPlace) {
        this.id = id;
        this.state = state;
        this.date = date;
        this.description = description;
        this.rate = rate;
        this.boarder = boarder;
        this.examiner = examiner;
        this.boardingPlace = boardingPlace;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public User getBoarder() {
        return boarder;
    }

    public void setBoarder(User boarder) {
        this.boarder = boarder;
    }

    public User getExaminer() {
        return examiner;
    }

    public void setExaminer(User examiner) {
        this.examiner = examiner;
    }

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(BoardingPlace boardingPlace) {
        this.boardingPlace = boardingPlace;
    }
}
