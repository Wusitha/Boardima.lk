package com.services.bodimalk.service;

import com.services.bodimalk.dto.SubscriptionPaymentDTO;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PaymnentBOImpl implements PaymentBO{
    @Override
    public boolean addSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return false;
    }

    @Override
    public boolean updateSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return false;
    }

    @Override
    public boolean deleteSubscriptionPayment(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return false;
    }

    @Override
    public List<SubscriptionPaymentDTO> getAllSubscriptionPayments() {
        return null;
    }

    @Override
    public List<SubscriptionPaymentDTO> getAllSubscriptionPaymentsByUser(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return null;
    }

    @Override
    public List<SubscriptionPaymentDTO> getAllSubscriptionPaymentsByBoardingPlace(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return null;
    }

    @Override
    public SubscriptionPaymentDTO getLastSubscriptionPaymentByBoardingPlace(SubscriptionPaymentDTO subscriptionPaymentDTO) {
        return null;
    }
}
