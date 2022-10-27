package com.services.bodimalk.dto;

public class BoardingPlaceFacilityDTO {
    private Long boardingPlace;
    private Long id;
    private String facility;

    public BoardingPlaceFacilityDTO() {
    }

    //for adding, removing facility
    public BoardingPlaceFacilityDTO(Long boardingPlace, Long id) {
        this.boardingPlace = boardingPlace;
        this.id = id;
    }

    //load facilities in boarding place
    public BoardingPlaceFacilityDTO(Long boardingPlace, Long id, String facility) {
        this.boardingPlace = boardingPlace;
        this.id = id;
        this.facility = facility;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFacility() {
        return facility;
    }

    public void setFacility(String facility) {
        this.facility = facility;
    }
}
