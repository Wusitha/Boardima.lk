package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class FacilityProfile {
    @EmbeddedId
    private FacilityProfilePK facilityProfilePK;
    @JsonIgnore
    @ManyToOne
    @JoinColumn(referencedColumnName = "id", insertable = false, updatable = false)
    private BoardingPlace boardingPlace;
    @JsonIgnore
    @ManyToOne
    @JoinColumn(referencedColumnName = "id", insertable = false, updatable = false)
    private BoardingFacility boardingFacility;

    public FacilityProfile() {
    }

    public FacilityProfilePK getFacilityProfilePK() {
        return facilityProfilePK;
    }

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public BoardingFacility getBoardingFacility() {
        return boardingFacility;
    }
}
