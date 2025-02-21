package com.ecotech.model;
import java.sql.Timestamp;

public class Metric_Record {
    private int recordId;
    private double value;
    private Timestamp recordedAt;
    private int projectId;
    private int metricId;

    // Constructor
    public Metric_Record(int recordId, double value, Timestamp recordedAt, int projectId, int metricId) {
        this.recordId = recordId;
        this.value = value;
        this.recordedAt = recordedAt;
        this.projectId = projectId;
        this.metricId = metricId;
    }

    // Default Constructor
    public Metric_Record() {}

    // Getter and Setter methods
    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public Timestamp getRecordedAt() {
        return recordedAt;
    }

    public void setRecordedAt(Timestamp recordedAt) {
        this.recordedAt = recordedAt;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public int getMetricId() {
        return metricId;
    }

    public void setMetricId(int metricId) {
        this.metricId = metricId;
    }
}
