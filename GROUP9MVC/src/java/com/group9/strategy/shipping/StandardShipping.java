package com.group9.strategy.shipping;

public class StandardShipping implements ShippingStrategy {

    @Override
    public double calculateShippingCost(double weight) {
        
        return 5.00;
    }
}
