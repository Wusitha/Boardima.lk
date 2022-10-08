package com.services.bodimalk.dao;

import com.services.bodimalk.entity.RentPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RentPaymentDAO extends JpaRepository<RentPayment, Long> {
}
