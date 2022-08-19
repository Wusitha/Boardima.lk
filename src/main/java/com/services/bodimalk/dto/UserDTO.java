package com.services.bodimalk.dto;

import java.sql.Date;

public class UserDTO {
    private Long id;
    private String nic;
    private String firstName;
    private String lastName;
    private String contact;
    private String email;
    private String password;
    private String gender;
    private Date dob;
    private String state;
    private String type;
    private String guardianName;
    private String guardianContact;
    private String profileImg;


    public UserDTO() {
    }

    public UserDTO(String nic, String firstName, String lastName, String contact, String email, String password, String gender, Date dob, String state, String type, String guardianName, String guardianContact, String profileImg) {
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

    public String getProfileImg() {
        return profileImg;
    }

    public void setProfileImg(String profileImg) {
        this.profileImg = profileImg;
    }

    @Override
    public String toString() {
        return "UserDTO{" +
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
                ", profileImg='" + profileImg + '\'' +
                '}';
    }
}
