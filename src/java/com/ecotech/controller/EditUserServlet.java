package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class EditUserServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO(); // Initialize UserDAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user data from the form
        int userId = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String contact = request.getParameter("contact");

        // Create a User object and populate it with the updated data
        User user = new User();
        user.setId(userId);
        user.setName(name);
        user.setEmail(email);
        user.setRole(role);
        user.setContact(contact);

        // Update the user in the database
        boolean isUpdated = userDAO.updateUser(user);

        // Redirect back to the user management page with a success/failure message
        if (isUpdated) {
            response.sendRedirect("user-management.jsp?message=User updated successfully");
            
        } else {
            response.sendRedirect("user-management.jsp?error=Failed to update user");
        }
    }

    @Override
    public void destroy() {
        // Clean up resources if needed
    }
}
