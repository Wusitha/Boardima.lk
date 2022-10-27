package com.services.bodimalk.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
public class BoardingFacility {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private String facility;
    @OneToMany(mappedBy = "boardingFacility", cascade = CascadeType.ALL)
    private List<FacilityProfile> facilityProfiles;

    public BoardingFacility() {
    }

    public BoardingFacility(Long id, String facility) {
        this.id = id;
        this.facility = facility;
    }

    public BoardingFacility(String facility) {
        this.facility = facility;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setFacility(String facility) {
        this.facility = facility;
    }

    public Long getId() {
        return id;
    }

    public String getFacility() {
        return facility;
    }

    public List<FacilityProfile> getFacilityProfiles() {
        return facilityProfiles;
    }
}
