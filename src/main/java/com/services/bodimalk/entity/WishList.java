package com.services.bodimalk.entity;

import javax.persistence.*;

@Entity
public class WishList {
    @EmbeddedId
    private WishListPK wishListPK;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "user", referencedColumnName = "id", insertable = false, updatable = false)
    private User user;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "boarding_place", referencedColumnName = "id", insertable = false, updatable = false)
    private BoardingPlace boardingPlace;

    public WishList() {
    }

    public WishList(WishListPK wishListPK, User user, BoardingPlace boardingPlace) {
        this.wishListPK = wishListPK;
        this.user = user;
        this.boardingPlace = boardingPlace;
    }

    public WishListPK getWishListPK() {
        return wishListPK;
    }

    public void setWishListPK(WishListPK wishListPK) {
        this.wishListPK = wishListPK;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(BoardingPlace boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    @Override
    public String toString() {
        return "WishList{" +
                "wishListPK=" + wishListPK +
                ", user=" + user +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
