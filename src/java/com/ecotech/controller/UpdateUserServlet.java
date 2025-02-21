package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userRole = request.getParameter("userRole");
        String userContact = request.getParameter("userContact");  // Get the contact number

        // Assuming UserDAO is responsible for database operations
        UserDAO userDAO = new UserDAO();

        boolean updateSuccess = userDAO.updateUser(userId, userName, userEmail, userRole, userContact);

        if (updateSuccess) {
            // Set success message
            request.setAttribute("successMessage", "User has been successfully updated!");
        } else {
            // Set error message
            request.setAttribute("errorMessage", "An error occurred while updating the user.");
        }

        // Forward to the edit page again to display the message
        request.getRequestDispatcher("editUser.jsp").forward(request, response);
    }
}
