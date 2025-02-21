package com.ecotech.controller;

import com.ecotech.model.Resources_Usage;
import com.ecotech.dao.ResourceUsageDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;


public class ResourceUsageServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("insert".equals(action)) {
            // Ambil data dari form
            int resourcesId = Integer.parseInt(request.getParameter("resourcesId"));
            double quantity = Double.parseDouble(request.getParameter("quantity"));
            String recordedAtStr = request.getParameter("recordedAt");
            int userId = 1; // Bisa menggunakan sesi untuk mendapatkan userId yang login

            // Konversi recordedAt ke Timestamp
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            Date parsedDate = null;
            try {
                parsedDate = format.parse(recordedAtStr);
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("error.jsp");
                return;
            }
            Timestamp recordedAt = new Timestamp(parsedDate.getTime());

            // Simpan ke database
            Resources_Usage usage = new Resources_Usage();
            usage.setQuantity(quantity);
            usage.setRecordedAt(recordedAt);
            usage.setUserId(userId);
            usage.setResourcesId(resourcesId);

            try {
                ResourceUsageDAO dao = new ResourceUsageDAO();
                dao.insertResourceUsage(usage);
                response.sendRedirect("success.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("error.jsp");
            }
        }
    }
}
