package com.services.bodimalk.dao;

import com.services.bodimalk.entity.SubscriptionPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubscriptionPaymentDAO extends JpaRepository<SubscriptionPayment, Long> {
}
