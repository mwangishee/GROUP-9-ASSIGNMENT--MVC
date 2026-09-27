package com.group9.strategy.discount;

public class StudentDiscount implements DiscountStrategy {
    @Override
    public double applyDiscount(double totalAmount) {
        return totalAmount * 0.90; 
    }
}