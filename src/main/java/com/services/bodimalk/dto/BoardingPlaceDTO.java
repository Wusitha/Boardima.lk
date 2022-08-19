package com.services.bodimalk.dto;

import java.sql.Date;
import java.util.List;

public class BoardingPlaceDTO {
    private Long id;
    private String location;
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

    public BoardingPlaceDTO() {
    }

    public BoardingPlaceDTO(Long id, String location, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, Long ownerId) {
        this.id = id;
        this.location = location;
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

    public BoardingPlaceDTO(Long id, String location, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, Long ownerId, List<ImageDTO> imageDTOS) {
        this.id = id;
        this.location = location;
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
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    @Override
    public String toString() {
        return "BoardingPlaceDTO{" +
                "id=" + id +
                ", location='" + location + '\'' +
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
                '}';
    }
}
