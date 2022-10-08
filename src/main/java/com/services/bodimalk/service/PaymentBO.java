package com.services.bodimalk.service;

import com.services.bodimalk.dto.SubscriptionPaymentDTO;

import java.util.List;

public interface PaymentBO {
    public boolean addSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO);
    public boolean updateSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO);
    public boolean deleteSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO);
    public List<SubscriptionPaymentDTO> getAllSubscriptionPayments();
    public List<SubscriptionPaymentDTO> getAllSubscriptionPaymentsByUser(SubscriptionPaymentDTO subscriptionPaymentDTO);
    public List<SubscriptionPaymentDTO> getAllSubscriptionPaymentsByBoardingPlace(SubscriptionPaymentDTO subscriptionPaymentDTO);
    public SubscriptionPaymentDTO getLastSubscriptionPaymentByBoardingPlace(SubscriptionPaymentDTO subscriptionPaymentDTO);
}
