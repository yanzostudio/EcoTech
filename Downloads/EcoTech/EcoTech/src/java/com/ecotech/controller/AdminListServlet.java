package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class AdminListServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO(); // Initialize UserDAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleFilter = request.getParameter("roleFilter");

        // Fetch list of users based on the role filter
        List<User> userList;
        if (roleFilter != null && !roleFilter.isEmpty()) {
            userList = userDAO.getUsersByRole(roleFilter); // Get users based on the selected role
        } else {
            userList = userDAO.getAllUsers(); // Get all users if no filter is selected
        }

        // Set the userList in request attribute for JSP access
        request.setAttribute("userList", userList);

        // Forward the request to JSP for rendering
        request.getRequestDispatcher("user-management.jsp").forward(request, response);
    }

    @Override
    public void destroy() {
        // Optional: Close resources if needed
    }
}
