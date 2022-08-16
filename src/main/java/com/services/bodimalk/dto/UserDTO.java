package com.services.bodimalk.dto;

import java.sql.Date;

public class UserDTO {
    private Long id;
    private String type;
    private String state;
    private String password;
    private String nic;
    private String firstName;
    private String lastName;
    private String guardianName;
    private String guardianContact;
    private String gender;
    private String email;
    private Date dob;
    private String contact;

    public UserDTO() {
    }

    public UserDTO(Long id, String type, String state, String password, String nic, String firstName, String lastName, String guardianName, String guardianContact, String gender, String email, Date dob, String contact) {
        this.id = id;
        this.type = type;
        this.state = state;
        this.password = password;
        this.nic = nic;
        this.firstName = firstName;
        this.lastName = lastName;
        this.guardianName = guardianName;
        this.guardianContact = guardianContact;
        this.gender = gender;
        this.email = email;
        this.dob = dob;
        this.contact = contact;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "UserDTO{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", state='" + state + '\'' +
                ", password='" + password + '\'' +
                ", nic='" + nic + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", guardianName='" + guardianName + '\'' +
                ", guardianContact='" + guardianContact + '\'' +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", dob=" + dob +
                ", contact='" + contact + '\'' +
                '}';
    }
}
