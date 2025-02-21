package com.ecotech.model;

import java.sql.Date;

public class Project {
    private int projectId;
    private String projectName;
    private Date dateLogged;
    private int userId;

    // Constructor
    public Project(int projectId, String projectName, Date dateLogged, int userId) {
        this.projectId = projectId;
        this.projectName = projectName;
        this.dateLogged = dateLogged;
        this.userId = userId;
    }

    // Default Constructor
    public Project() {}

    // Getter and Setter methods
    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Date getDateLogged() {
        return dateLogged;
    }

    public void setDateLogged(Date dateLogged) {
        this.dateLogged = dateLogged;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
