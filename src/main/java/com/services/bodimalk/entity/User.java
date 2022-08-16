package com.services.bodimalk.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private String nic;
    @NotNull
    @Column(name = "first_name")
    private String firstName;
    @NotNull
    @Column(name = "last_name")
    private String lastName;
    @NotNull
    @Column(length = 10)
    private String contact;
    @NotNull
    @Column(length = 100, unique = true)
    private String email;
    @NotNull
    private String password;
    @NotNull
    @Column(length = 1)
    private String gender;
    @NotNull
    private Date dob;
    @NotNull
    @Column(length = 1)
    private String state;
    @NotNull
    @Column(length = 1)
    private String type;
    @NotNull
    @Column(name = "guardian_name")
    private String guardianName;
    @NotNull
    @Column(name = "guardian_contact",length = 10)
    private String guardianContact;

    @OneToMany(mappedBy = "user", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<Notification> notifications;

    @OneToMany(mappedBy = "owner", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<BoardingPlace> boardingPlaces;

    @OneToMany(mappedBy = "boarder", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<RentPayment> rentPayments;

    @OneToMany(mappedBy = "owner", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<SubscriptionPayment> subscriptionPayments;

    @OneToMany(mappedBy = "boarder", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<BoardingRequest> boardingRequests;

    @OneToMany(mappedBy = "user", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<WishList> wishLists;

    @OneToMany(mappedBy = "boarder", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<Review> reviews;

    @OneToMany(mappedBy = "examiner", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE}, fetch = FetchType.LAZY)
    private List<Review> complaints;


    public User() {
    }

    public User(String nic, String firstName, String lastName, String contact, String email, String password, String gender, Date dob, String state, String type, String guardianName, String guardianContact) {
        this.nic = nic;
        this.firstName = firstName;
        this.lastName = lastName;
        this.contact = contact;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.dob = dob;
        this.state = state;
        this.type = type;
        this.guardianName = guardianName;
        this.guardianContact = guardianContact;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGuardianName() {
        return guardianName;
    }

    public void setGuardianName(String guardianName) {
        this.guardianName = guardianName;
    }

    public String getGuardianContact() {
        return guardianContact;
    }

    public void setGuardianContact(String guardianContact) {
        this.guardianContact = guardianContact;
    }

    public List<Notification> getNotifications() {
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }

    public List<BoardingPlace> getBoardingPlaces() {
        return boardingPlaces;
    }

    public void setBoardingPlaces(List<BoardingPlace> boardingPlaces) {
        this.boardingPlaces = boardingPlaces;
    }

    public List<RentPayment> getRentPayments() {
        return rentPayments;
    }

    public void setRentPayments(List<RentPayment> rentPayments) {
        this.rentPayments = rentPayments;
    }

    public List<SubscriptionPayment> getSubscriptionPayments() {
        return subscriptionPayments;
    }

    public void setSubscriptionPayments(List<SubscriptionPayment> subscriptionPayments) {
        this.subscriptionPayments = subscriptionPayments;
    }

    public List<BoardingRequest> getBoardingRequests() {
        return boardingRequests;
    }

    public void setBoardingRequests(List<BoardingRequest> boardingRequests) {
        this.boardingRequests = boardingRequests;
    }

    public List<WishList> getWishLists() {
        return wishLists;
    }

    public void setWishLists(List<WishList> wishLists) {
        this.wishLists = wishLists;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public List<Review> getComplaints() {
        return complaints;
    }

    public void setComplaints(List<Review> complaints) {
        this.complaints = complaints;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", nic='" + nic + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", contact='" + contact + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", gender='" + gender + '\'' +
                ", dob=" + dob +
                ", state='" + state + '\'' +
                ", type='" + type + '\'' +
                ", guardianName='" + guardianName + '\'' +
                ", guardianContact='" + guardianContact + '\'' +
                ", notifications=" + notifications +
                ", boardingPlaces=" + boardingPlaces +
                ", rentPayments=" + rentPayments +
                ", subscriptionPayments=" + subscriptionPayments +
                ", boardingRequests=" + boardingRequests +
                ", wishLists=" + wishLists +
                ", reviews=" + reviews +
                ", complaints=" + complaints +
                '}';
    }
}
