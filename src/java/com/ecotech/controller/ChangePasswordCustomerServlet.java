package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;
import com.ecotech.util.DatabaseConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ChangePasswordCustomerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get current and new password from the form
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Get the currently logged-in user's ID (Assuming it's stored in session)
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");

        if (loggedInUser != null) {
            // Check if the current password matches the one in the database
            UserDAO userDAO = new UserDAO(DatabaseConnection.getConnection());
            if (loggedInUser.getPassword().equals(currentPassword)) {
                // Check if new password and confirm password match
                if (newPassword.equals(confirmPassword)) {
                    // Update the password
                    loggedInUser.setPassword(newPassword);
                    boolean success = userDAO.updateUser(loggedInUser);

                    if (success) {
                        // If password is updated, save the updated user in session
                        session.setAttribute("user", loggedInUser);
                        // Redirect to profile page with a success message
                        response.sendRedirect("profile.jsp?passwordStatus=success");
                    } else {
                        response.sendRedirect("profile.jsp?passwordStatus=error");
                    }
                } else {
                    response.sendRedirect("profile.jsp?passwordStatus=mismatch");
                }
            } else {
                response.sendRedirect("profile.jsp?passwordStatus=incorrect");
            }
        }
    }
}
