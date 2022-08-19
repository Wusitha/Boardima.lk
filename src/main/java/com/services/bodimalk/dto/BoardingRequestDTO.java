package com.services.bodimalk.dto;

import com.services.bodimalk.entity.BoardingRequestPK;

public class BoardingRequestDTO {
    private BoardingRequestPK boardingRequestPK;
    private String state;
    private boolean isPaid;

    public BoardingRequestDTO() {
    }

    public BoardingRequestDTO(BoardingRequestPK boardingRequestPK, String state, boolean isPaid) {
        this.boardingRequestPK = boardingRequestPK;
        this.state = state;
        this.isPaid = isPaid;
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

    @Override
    public String toString() {
        return "BoardingRequestDTO{" +
                "boardingRequestPK=" + boardingRequestPK +
                ", state='" + state + '\'' +
                ", isPaid=" + isPaid +
                '}';
    }
}
