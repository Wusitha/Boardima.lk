package com.services.bodimalk.dto;

import java.sql.Date;

public class ReviewDTO {
    private Long id;
    private Long examiner;
    private Long boardingPlace;
    private Long boarder;
    private String state;
    private Date date;
    private String description;

    public ReviewDTO() {
    }

    public ReviewDTO(Long id, Long examiner, Long boardingPlace, Long boarder, String state, Date date, String description) {
        this.id = id;
        this.examiner = examiner;
        this.boardingPlace = boardingPlace;
        this.boarder = boarder;
        this.state = state;
        this.date = date;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getBoarder() {
        return boarder;
    }

    public void setBoarder(Long boarder) {
        this.boarder = boarder;
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

    @Override
    public String toString() {
        return "ReviewDTO{" +
                "id=" + id +
                ", examiner=" + examiner +
                ", boardingPlace=" + boardingPlace +
                ", boarder=" + boarder +
                ", state='" + state + '\'' +
                ", date=" + date +
                ", description='" + description + '\'' +
                '}';
    }
}
