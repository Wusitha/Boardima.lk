package com.services.bodimalk.entity;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class FacilityProfilePK implements Serializable {
    private Long boardingPlace;
    private Long facility;

    public FacilityProfilePK() {
    }

    public FacilityProfilePK(Long boardingPlace, Long facility) {
        this.boardingPlace = boardingPlace;
        this.facility = facility;
    }
}
