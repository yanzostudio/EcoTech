package com.ecotech.controller;

import com.ecotech.model.User;
import com.ecotech.dao.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class CustomerAuthController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        UserDAO userDAO = new UserDAO();

        if ("login".equals(action)) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User user = userDAO.loginUser(email, password);
            if (user != null && "Customer".equals(user.getRole())) {
                // Store the user in session as admin
                HttpSession session = request.getSession();
                session.setAttribute("Customer", user);
                response.sendRedirect("user/index.jsp");
            } else {
                request.setAttribute("error", "Invalid customer credentials. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else if ("register".equals(action)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String contact = request.getParameter("contact");

            // Check if the email already exists
            if (userDAO.emailExists(email)) {
                request.setAttribute("error", "Email already exists. Please choose another one.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            user.setContact(contact);
            user.setRole("Customer"); // Set the role as admin

            boolean isRegistered = userDAO.registerUser(user);
            if (isRegistered) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("error", "Customer registration failed. Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
    }
}
