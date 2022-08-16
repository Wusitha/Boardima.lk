package com.services.bodimalk.dto;

public class WishListDTO {
    private Long user;
    private Long boardingPlace;

    public WishListDTO() {
    }

    public WishListDTO(Long user, Long boardingPlace) {
        this.user = user;
        this.boardingPlace = boardingPlace;
    }

    public Long getUser() {
        return user;
    }

    public void setUser(Long user) {
        this.user = user;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    @Override
    public String toString() {
        return "WishListDTO{" +
                "user=" + user +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
