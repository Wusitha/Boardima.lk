package com.services.bodimalk.dto;

import java.sql.Date;

public class ReviewDTO {
    private Long id;
    private String state;
    private Date date;
    private String description;
    private double rate;
    private Long boarder;
    private Long examiner;
    private Long boardingPlace;

    public ReviewDTO() {
    }

    public ReviewDTO(String state, Date date, String description, double rate, Long boarder, Long examiner, Long boardingPlace) {
        this.state = state;
        this.date = date;
        this.description = description;
        this.rate = rate;
        this.boarder = boarder;
        this.examiner = examiner;
        this.boardingPlace = boardingPlace;
    }

    public ReviewDTO(Long id, String state, Date date, String description, double rate, Long boarder, Long examiner, Long boardingPlace) {
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

    public Long getBoarder() {
        return boarder;
    }

    public void setBoarder(Long boarder) {
        this.boarder = boarder;
    }

    public Long getExaminer() {
        return examiner;
    }

    public void setExaminer(Long examiner) {
        this.examiner = examiner;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    @Override
    public String toString() {
        return "ReviewDTO{" +
                "id=" + id +
                ", state='" + state + '\'' +
                ", date=" + date +
                ", description='" + description + '\'' +
                ", rate=" + rate +
                ", boarder=" + boarder +
                ", examiner=" + examiner +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
