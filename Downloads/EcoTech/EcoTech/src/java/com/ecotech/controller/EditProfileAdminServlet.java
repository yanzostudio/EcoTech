package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class EditProfileAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the current admin details from the session
        HttpSession session = request.getSession();
        User admin = (User) session.getAttribute("Admin");

        if (admin == null) {
            // If no admin is logged in, redirect to the login page
            response.sendRedirect("login.jsp");
            return;
        }

        // Get the updated details from the form
        String newEmail = request.getParameter("email");
        String newPassword = request.getParameter("password");
        String newContact = request.getParameter("contact");

        // Update user object with new data
        admin.setEmail(newEmail);
        admin.setContact(newContact);
        if (newPassword != null && !newPassword.isEmpty()) {
            admin.setPassword(newPassword);  // Update password only if provided
        }

        // Update the admin in the database
        UserDAO userDAO = new UserDAO();  // Use your existing database connection
        boolean updateSuccess = userDAO.updateUser(admin);

        if (updateSuccess) {
            session.setAttribute("Admin", admin);  // Update session with new details
            response.sendRedirect("profile.jsp?status=success");
        } else {
            response.sendRedirect("profile.jsp?status=error");
        }
    }
}
