package com.services.bodimalk.dao;
import com.services.bodimalk.entity.VerificationToken;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VerificationTokenDAO extends JpaRepository<VerificationToken,Long>{
    VerificationToken findByToken(String token);
}
