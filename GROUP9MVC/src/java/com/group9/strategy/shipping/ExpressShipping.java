package com.group9.strategy.shipping;

public class ExpressShipping implements ShippingStrategy {

    @Override
    public double calculateShippingCost(double weight) {
        
        return weight * 2.50;
    }
}
