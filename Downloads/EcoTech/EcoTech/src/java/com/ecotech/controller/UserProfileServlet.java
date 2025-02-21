package com.ecotech.controller;

import com.ecotech.dao.UserDAO;
import com.ecotech.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

//@WebServlet("/updateProfile")
public class UserProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // If user is not logged in, redirect to login page
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        UserDAO userDAO = new UserDAO();
        user = userDAO.getUserByEmail(user.getEmail());  // Fetch updated user data
        request.setAttribute("user", user);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // If user is not logged in, redirect to login page
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        // Set the updated data into user object
        user.setName(fullName);
        user.setEmail(email);
        user.setContact(phone);

        UserDAO userDAO = new UserDAO();
        boolean isUpdated = userDAO.updateUser(user);  // Update user in the database

        if (isUpdated) {
            session.setAttribute("user", user);  // Update session with new data
            response.sendRedirect("profile.jsp?message=Profile updated successfully");
        } else {
            response.sendRedirect("profile.jsp?error=Failed to update profile");
        }
    }
}
