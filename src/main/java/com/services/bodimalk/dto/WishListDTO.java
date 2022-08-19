package com.services.bodimalk.dto;

import com.services.bodimalk.entity.WishListPK;

public class WishListDTO {
    private WishListPK wishListPK;

    public WishListDTO() {
    }

    public WishListDTO(WishListPK wishListPK) {
        this.wishListPK = wishListPK;
    }

    public WishListPK getWishListPK() {
        return wishListPK;
    }

    public void setWishListPK(WishListPK wishListPK) {
        this.wishListPK = wishListPK;
    }

    @Override
    public String toString() {
        return "WishListDTO{" +
                "wishListPK=" + wishListPK +
                '}';
    }
}
