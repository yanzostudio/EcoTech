package com.ecotech.controller;
import com.ecotech.model.Metric_Record;
import com.ecotech.dao.MetricRecordDAO;
import java.util.*;
import java.sql.Date;

public class MetricRecordController {
    private MetricRecordDAO metricRecordDAO = new MetricRecordDAO();

    public void createMetricRecord(double value, Date recordedAt, int projectId, int metricId) {
        Metric_Record record = new Metric_Record();
        record.setValue(value);
        record.setRecordedAt(recordedAt);
        record.setProjectId(projectId);
        record.setMetricId(metricId);
        metricRecordDAO.createMetricRecord(record);
    }
}
