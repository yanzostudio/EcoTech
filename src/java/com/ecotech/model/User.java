package com.ecotech.model;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String contact;
    private String role;  // Customer role
    
    // Default no-argument constructor
    public User() {
    }

    // Parameterized constructor
    public User(int id, String name, String email, String contact, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.role = role;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getContact() { return contact; }
    public void setContact(String contact) { this.contact = contact; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
