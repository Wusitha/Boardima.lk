package com.services.bodimalk.dto;

public class BoardingRequestDTO {
    private Long boarder;
    private Long boardingPlace;
    private boolean isPaid;
    private String state;

    public BoardingRequestDTO() {
    }

    public BoardingRequestDTO(Long boarder, Long boardingPlace, boolean isPaid, String state) {
        this.boarder = boarder;
        this.boardingPlace = boardingPlace;
        this.isPaid = isPaid;
        this.state = state;
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

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "BoardingRequestDTO{" +
                "boarder=" + boarder +
                ", boardingPlace=" + boardingPlace +
                ", isPaid=" + isPaid +
                ", state='" + state + '\'' +
                '}';
    }
}
