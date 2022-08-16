package com.services.bodimalk.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class BoardingRequestPK implements Serializable {

    @Column(name = "boarder")
    private Long boarder;
    @Column(name = "boarding_place")
    private Long boardingPlace;

    public BoardingRequestPK() {
    }

    public BoardingRequestPK(Long boarder, Long boardingPlace) {
        this.boarder = boarder;
        this.boardingPlace = boardingPlace;
    }

    public Long getBoarder() {
        return boarder;
    }

    public void setBoarder(Long boarder) {
        this.boarder = boarder;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    @Override
    public String toString() {
        return "BoardingRequestPK{" +
                "boarder=" + boarder +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
