package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "boarding_place")
public class BoardingPlace {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private double latitude;
    @NotNull
    private double altitude;
    @NotNull
    private String name;
    @NotNull
    private String description;
    @Column(name = "key_money", nullable = false)
    private int keyMoney;
    @NotNull
    private String state;
    @NotNull
    private double rate;
    @NotNull
    private Date date;
    @Column(name = "rent_day", nullable = false)
    private int rentDay;
    @Column(name = "rent_amo", nullable = false)
    private double rentAmo;
    @NotNull
    private int beds;
    @NotNull
    private int baths;
    @Column(name = "gender_pref", nullable = false)
    private String genderPref;
    @NotNull
    private int type;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "owner", referencedColumnName = "id", nullable = false)
    private User owner;

    @OneToMany(mappedBy = "boardingPlace", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<Image> images;

    @OneToMany(mappedBy = "boardingPlace", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<RentPayment> rentPayments;

    @OneToMany(mappedBy = "boardingPlace", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<SubscriptionPayment> subscriptionPayments;

    @OneToMany(mappedBy = "boardingPlace", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<BoardingRequest> boardingRequests;


    @OneToMany(mappedBy = "boardingPlace", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<Review> reviews;
    @OneToMany(mappedBy = "boardingPlace", cascade = CascadeType.ALL)
    private List<FacilityProfile> facilityProfile;

    public BoardingPlace() {
    }

    public BoardingPlace(Long id, double latitude, double altitude, String name, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, User owner) {
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
        this.owner = owner;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setKeyMoney(int keyMoney) {
        this.keyMoney = keyMoney;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setRentDay(int rentDay) {
        this.rentDay = rentDay;
    }

    public void setRentAmo(double rentAmo) {
        this.rentAmo = rentAmo;
    }

    public void setBeds(int beds) {
        this.beds = beds;
    }

    public void setBaths(int baths) {
        this.baths = baths;
    }

    public void setGenderPref(String genderPref) {
        this.genderPref = genderPref;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public Long getId() {
        return id;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getAltitude() {
        return altitude;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public int getKeyMoney() {
        return keyMoney;
    }

    public String getState() {
        return state;
    }

    public double getRate() {
        return rate;
    }

    public Date getDate() {
        return date;
    }

    public int getRentDay() {
        return rentDay;
    }

    public double getRentAmo() {
        return rentAmo;
    }

    public int getBeds() {
        return beds;
    }

    public int getBaths() {
        return baths;
    }

    public String getGenderPref() {
        return genderPref;
    }

    public int getType() {
        return type;
    }

    public User getOwner() {
        return owner;
    }

    public List<Image> getImages() {
        return images;
    }

    public List<RentPayment> getRentPayments() {
        return rentPayments;
    }

    public List<SubscriptionPayment> getSubscriptionPayments() {
        return subscriptionPayments;
    }

    public List<BoardingRequest> getBoardingRequests() {
        return boardingRequests;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public List<FacilityProfile> getFacilityProfile() {
        return facilityProfile;
    }

    @Override
    public String toString() {
        return "BoardingPlace{" +
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
                ", owner=" + owner +
                ", images=" + images +
                ", rentPayments=" + rentPayments +
                ", subscriptionPayments=" + subscriptionPayments +
                ", boardingRequests=" + boardingRequests +
                ", reviews=" + reviews +
                ", facilityProfile=" + facilityProfile +
                '}';
    }
}
