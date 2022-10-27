package com.services.bodimalk.dto;

import java.sql.Date;
import java.util.List;

public class BoardingPlaceDTO {
    private Long id;
    private double latitude;
    private double altitude;
    private String name;
    private String description;
    private int keyMoney;
    private String state;
    private double rate;
    private Date date;
    private int rentDay;
    private double rentAmo;
    private int beds;
    private int baths;
    private String genderPref;
    private int type;
    private Long ownerId;

    private List<ImageDTO> imageDTOS;
    private List<BoardingPlaceFacilityDTO> facilityDTOS;
    private List<ReviewDTO> reviewDTOS;

    public BoardingPlaceDTO() {
    }

    // use to load data in admin side
    public BoardingPlaceDTO(Long id, double latitude, double altitude, String name, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, Long ownerId) {
        this.id = id;
        this.latitude = latitude;
        this.altitude = altitude;
        this.name = name;
        this.description = description;
        this.keyMoney = keyMoney;
        this.state = state;
        this.rate = rate;
        this.date = date;
        this.rentDay = rentDay;
        this.rentAmo = rentAmo;
        this.beds = beds;
        this.baths = baths;
        this.genderPref = genderPref;
        this.type = type;
        this.ownerId = ownerId;
    }

    //load data in user's side
    public BoardingPlaceDTO(Long id, double latitude, double altitude, String name, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, Long ownerId, List<ImageDTO> imageDTOS, List<BoardingPlaceFacilityDTO> facilityDTOS) {
        this.id = id;
        this.latitude = latitude;
        this.altitude = altitude;
        this.name = name;
        this.description = description;
        this.keyMoney = keyMoney;
        this.state = state;
        this.rate = rate;
        this.date = date;
        this.rentDay = rentDay;
        this.rentAmo = rentAmo;
        this.beds = beds;
        this.baths = baths;
        this.genderPref = genderPref;
        this.type = type;
        this.ownerId = ownerId;
        this.imageDTOS = imageDTOS;
        this.facilityDTOS = facilityDTOS;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getAltitude() {
        return altitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getKeyMoney() {
        return keyMoney;
    }

    public void setKeyMoney(int keyMoney) {
        this.keyMoney = keyMoney;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getRentDay() {
        return rentDay;
    }

    public void setRentDay(int rentDay) {
        this.rentDay = rentDay;
    }

    public double getRentAmo() {
        return rentAmo;
    }

    public void setRentAmo(double rentAmo) {
        this.rentAmo = rentAmo;
    }

    public int getBeds() {
        return beds;
    }

    public void setBeds(int beds) {
        this.beds = beds;
    }

    public int getBaths() {
        return baths;
    }

    public void setBaths(int baths) {
        this.baths = baths;
    }

    public String getGenderPref() {
        return genderPref;
    }

    public void setGenderPref(String genderPref) {
        this.genderPref = genderPref;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public Long getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Long ownerId) {
        this.ownerId = ownerId;
    }

    public List<ImageDTO> getImageDTOS() {
        return imageDTOS;
    }

    public void setImageDTOS(List<ImageDTO> imageDTOS) {
        this.imageDTOS = imageDTOS;
    }

    public List<BoardingPlaceFacilityDTO> getFacilityDTOS() {
        return facilityDTOS;
    }

    public void setFacilityDTOS(List<BoardingPlaceFacilityDTO> facilityDTOS) {
        this.facilityDTOS = facilityDTOS;
    }

    public List<ReviewDTO> getReviewDTOS() {
        return reviewDTOS;
    }

    public void setReviewDTOS(List<ReviewDTO> reviewDTOS) {
        this.reviewDTOS = reviewDTOS;
    }

    @Override
    public String toString() {
        return "BoardingPlaceDTO{" +
                "id=" + id +
                ", latitude=" + latitude +
                ", altitude=" + altitude +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", keyMoney=" + keyMoney +
                ", state='" + state + '\'' +
                ", rate=" + rate +
                ", date=" + date +
                ", rentDay=" + rentDay +
                ", rentAmo=" + rentAmo +
                ", beds=" + beds +
                ", baths=" + baths +
                ", genderPref='" + genderPref + '\'' +
                ", type=" + type +
                ", ownerId=" + ownerId +
                ", imageDTOS=" + imageDTOS +
                ", facilityDTOS=" + facilityDTOS +
                '}';
    }
}
