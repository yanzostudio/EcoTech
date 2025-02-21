package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;
import com.ecotech.util.DatabaseConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class EditProfileCustomerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch user data from the form
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        // Get the currently logged-in user's ID (Assuming it's stored in session)
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("Customer");

        if (loggedInUser != null) {
            // Update the user data
            loggedInUser.setName(name);
            loggedInUser.setEmail(email);
            loggedInUser.setContact(phone);

            // Create a UserDAO instance
            UserDAO userDAO = new UserDAO(DatabaseConnection.getConnection());

            // Update the user information in the database
            boolean success = userDAO.updateUser(loggedInUser);
            
            if (success) {
                // If update was successful, save the updated user in session
                session.setAttribute("Customer", loggedInUser);
                // Redirect to profile page with a success message
                response.sendRedirect("profile.jsp?status=success");
            } else {
                // If update failed, redirect with an error message
                response.sendRedirect("profile.jsp?status=error");
            }
        }
    }
}
