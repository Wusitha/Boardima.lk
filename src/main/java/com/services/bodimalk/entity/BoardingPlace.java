package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.sql.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@Table(name = "boarding_place")
public class BoardingPlace {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private String location;
    @NotNull
    private String description;
    @Column(name = "key_money", nullable = false)
    private int keyMoney;
    @NotNull
    private String state;
    @NotNull
    @Size(min = 0, max = 5)
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
    @JoinColumn(name = "owner", referencedColumnName = "id")
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

    public BoardingPlace() {
    }

    public BoardingPlace(Long id, String location, String description, int keyMoney, String state, double rate, Date date, int rentDay, double rentAmo, int beds, int baths, String genderPref, int type, User owner) {
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
        this.owner = owner;
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

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public void setImages(List<Image> images)
    {
        this.images=images;
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

    @Override
    public String toString() {
        return "BoardingPlace{" +
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
                ", owner=" + owner +
                '}';
    }
}
