package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
public class WishList {
    @EmbeddedId
    private WishListPK wishListPK;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarder", referencedColumnName = "id", insertable = false, updatable = false)
    private User boarder;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarding_place", referencedColumnName = "id", insertable = false, updatable = false)
    private BoardingPlace boardingPlace;

    public WishList() {
    }

    public WishList(WishListPK wishListPK) {
        this.wishListPK = wishListPK;
    }

    public WishList(Long user, Long boardingPlace) {
        this.wishListPK = new WishListPK(user, boardingPlace);
    }

    public WishListPK getWishListPK() {
        return wishListPK;
    }

    public void setWishListPK(WishListPK wishListPK) {
        this.wishListPK = wishListPK;
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
