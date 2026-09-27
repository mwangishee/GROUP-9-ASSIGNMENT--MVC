package com.group9.observer;

public class InventoryManager implements OrderObserver {
    @Override
    public void notify(String message) {
        System.out.println("Deducting stock from the warehouse database, 1 sec");
    }
}