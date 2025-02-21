package com.ecotech.model;

import java.sql.Timestamp;

public class Resources_Usage {
    private int usageId;
    private double quantity;
    private Timestamp recordedAt;
    private int userId;
    private int resourcesId;

    // Constructor
    public Resources_Usage(int usageId, double quantity, Timestamp recordedAt, int userId, int resourcesId) {
        this.usageId = usageId;
        this.quantity = quantity;
        this.recordedAt = recordedAt;
        this.userId = userId;
        this.resourcesId = resourcesId;
    }

    // Default Constructor
    public Resources_Usage() {}

    // Getter and Setter methods
    public int getUsageId() {
        return usageId;
    }

    public void setUsageId(int usageId) {
        this.usageId = usageId;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public Timestamp getRecordedAt() {
        return recordedAt;
    }

    public void setRecordedAt(Timestamp recordedAt) {
        this.recordedAt = recordedAt;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getResourcesId() {
        return resourcesId;
    }

    public void setResourcesId(int resourcesId) {
        this.resourcesId = resourcesId;
    }
}
