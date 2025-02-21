package com.ecotech.model;

public class Sustainability_Metrics {
    private int metricId;
    private String metricName;
    private String unit;

    // Constructor
    public Sustainability_Metrics(int metricId, String metricName, String unit) {
        this.metricId = metricId;
        this.metricName = metricName;
        this.unit = unit;
    }

    // Default Constructor
    public Sustainability_Metrics() {}

    // Getter and Setter methods
    public int getMetricId() {
        return metricId;
    }

    public void setMetricId(int metricId) {
        this.metricId = metricId;
    }

    public String getMetricName() {
        return metricName;
    }

    public void setMetricName(String metricName) {
        this.metricName = metricName;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
