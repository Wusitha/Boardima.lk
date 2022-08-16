package com.services.bodimalk.entity;

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
    @NotNull
    private String description;

    @ManyToOne
    @JoinColumn(name = "boarder",referencedColumnName = "id")
    private User boarder;

    @ManyToOne
    @JoinColumn(name = "examiner", referencedColumnName = "id", nullable = true)
    private User examiner;

    @ManyToOne
    @JoinColumn(name = "boarding_place", referencedColumnName = "id")
    private BoardingPlace boardingPlace;

    public Review() {
    }

    public Review(String state, Date date, String description, User boarder, BoardingPlace boardingPlace) {
        this.state = state;
        this.date = date;
        this.description = description;
        this.boarder = boarder;
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

    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", state='" + state + '\'' +
                ", date=" + date +
                ", description='" + description + '\'' +
                ", boarder=" + boarder +
                ", examiner=" + examiner +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
