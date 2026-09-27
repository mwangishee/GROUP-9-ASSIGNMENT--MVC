package com.group9.observer;

public class EmailNotifier implements OrderObserver {
    @Override
    public void notify(String message) {
        System.out.println("Sending order receipt to the user,wait a sec");
    }
}