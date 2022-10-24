package com.services.bodimalk.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 12, unique = true)
    private String nic;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(length = 10)
    private String contact;
    @Column(length = 100, unique = true, nullable = false)
    private String email;
    @NotNull
    private String password;
    @Column(length = 1)
    private String gender;
    @Column(length = 1)
    private String state;
    @Column(length = 1)
    private String type;
    @Column(name = "guardian_name")
    private String guardianName;
    @Column(name = "guardian_contact",length = 10)
    private String guardianContact;
    private String profileImg;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Notification> notifications;

    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<BoardingPlace> boardingPlaces;
    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SubscriptionPayment> subscriptionPayments;

    @OneToMany(mappedBy = "boarder", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<RentPayment> rentPayments;
    @OneToMany(mappedBy = "boarder", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<BoardingRequest> boardingRequests;
    @OneToMany(mappedBy = "boarder", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<WishList> wishLists;
    @OneToMany(mappedBy = "boarder", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Review> reviews;
    @OneToMany(mappedBy = "examiner", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Review> complaints;


    public User() {
    }

    public User(Long id, String nic, String firstName, String lastName, String contact, String email, String password, String gender, String state, String type, String guardianName, String guardianContact, String profileImg) {
        this.id = id;
        this.nic = nic;
        this.firstName = firstName;
        this.lastName = lastName;
        this.contact = contact;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.state = state;
        this.type = type;
        this.guardianName = guardianName;
        this.guardianContact = guardianContact;
        this.profileImg = profileImg;
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

    public String getProfileImg() {
        return profileImg;
    }

    public void setProfileImg(String profileImg) {
        this.profileImg = profileImg;
    }

    public List<Notification> getNotifications() {
        return notifications;
    }

    public List<BoardingPlace> getBoardingPlaces() {
        return boardingPlaces;
    }

    public List<SubscriptionPayment> getSubscriptionPayments() {
        return subscriptionPayments;
    }

    public List<RentPayment> getRentPayments() {
        return rentPayments;
    }

    public List<BoardingRequest> getBoardingRequests() {
        return boardingRequests;
    }

    public List<WishList> getWishLists() {
        return wishLists;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public List<Review> getComplaints() {
        return complaints;
    }

}
