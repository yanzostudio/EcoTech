package com.ecotech.controller;

import com.ecotech.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class DeleteUserServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO(); // Initialize the UserDAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user ID from the request parameter
        String userIdParam = request.getParameter("id");
        if (userIdParam != null) {
            try {
                int userId = Integer.parseInt(userIdParam);

                // Call the deleteUser method to delete the user from the database
                boolean isDeleted = userDAO.deleteUser(userId);

                if (isDeleted) {
                    response.sendRedirect("user-management.jsp?message=User deleted successfully");
                } else {
                    response.sendRedirect("user-management.jsp?error=Failed to delete user");
                }
            } catch (NumberFormatException e) {
                response.sendRedirect("user-management.jsp?error=Invalid user ID");
            }
        } else {
            response.sendRedirect("user-management.jsp?error=User ID is missing");
        }
    }

    @Override
    public void destroy() {
        // Clean up resources if needed
    }
}
