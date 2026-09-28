package com.group9.strategy.shipping;

public class StorePickup implements ShippingStrategy {

    @Override
    public double calculateShippingCost(double weight) {
        return 0.00;
    }
}