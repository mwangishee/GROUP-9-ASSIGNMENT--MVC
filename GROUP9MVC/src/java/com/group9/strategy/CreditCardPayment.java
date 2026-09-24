/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group9.strategy;

/**
 *
 * @author SHEILA
 */
public class CreditCardPayment implements PaymentStrategy {
    
    @Override
    public void pay(double amount){
        System.out.println("Paid" + amount + "Using Credit Card.");
    }
}
