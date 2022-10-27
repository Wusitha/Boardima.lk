package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class BoardingRequest {

    @EmbeddedId
    private BoardingRequestPK boardingRequestPK;

    @NotNull
    @Column(length = 1)
    private String state;
    @NotNull
    private boolean isPaid;
    private boolean isRated; // just for testing

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "boarder", referencedColumnName = "id", insertable = false, updatable = false)
    private User boarder;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarding_place", referencedColumnName = "id", insertable = false, updatable = false)
    private BoardingPlace boardingPlace;

    public BoardingRequest() {
    }

    public BoardingRequest(BoardingRequestPK boardingRequestPK, String state, boolean isPaid, boolean isRated, User boarder, BoardingPlace boardingPlace) {
        this.boardingRequestPK = boardingRequestPK;
        this.state = state;
        this.isPaid = isPaid;
        this.isRated = isRated;
        this.boarder = boarder;
        this.boardingPlace = boardingPlace;
    }

    public BoardingRequestPK getBoardingRequestPK() {
        return boardingRequestPK;
    }

    public void setBoardingRequestPK(BoardingRequestPK boardingRequestPK) {
        this.boardingRequestPK = boardingRequestPK;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
    }

    public boolean isRated() {
        return isRated;
    }

    public void setRated(boolean rated) {
        isRated = rated;
    }

    public User getBoarder() {
        return boarder;
    }

    public void setBoarder(User boarder) {
        this.boarder = boarder;
    }

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(BoardingPlace boardingPlace) {
        this.boardingPlace = boardingPlace;
    }
}
