package com.services.bodimalk.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
public class VerificationToken {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String token;

    @OneToOne(fetch=FetchType.EAGER)
    @JoinColumn(name = "user_id",nullable = false,referencedColumnName = "id")
    private User user;
    public VerificationToken(User user,String token){
        this.user=user;
        this.token=token;


    }
}
