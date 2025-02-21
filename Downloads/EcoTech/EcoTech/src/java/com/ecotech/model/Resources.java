package com.ecotech.model;

public class Resources {
    private int resourcesId;
    private String resourcesName;
    private String category;
    private String unit;

    // Constructor
    public Resources(int resourcesId, String resourcesName, String category, String unit) {
        this.resourcesId = resourcesId;
        this.resourcesName = resourcesName;
        this.category = category;
        this.unit = unit;
    }

    // Default Constructor
    public Resources() {}

    // Getter and Setter methods
    public int getResourcesId() {
        return resourcesId;
    }

    public void setResourcesId(int resourcesId) {
        this.resourcesId = resourcesId;
    }

    public String getResourcesName() {
        return resourcesName;
    }

    public void setResourcesName(String resourcesName) {
        this.resourcesName = resourcesName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
