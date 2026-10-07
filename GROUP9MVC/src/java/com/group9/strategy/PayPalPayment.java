package com.group9.strategy;

public class PayPalPayment implements PaymentStrategy {

    @Override
    public void pay(double amount) {
        System.out.println("Processing PayPal payment...");
    }
}