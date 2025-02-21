package com.ecotech.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AdminLogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Invalidate the session to log out the admin
        HttpSession session = request.getSession();
        session.invalidate();  // Invalidates the session, logging the admin out

        // Redirect to the login page after logging out
        response.sendRedirect("login.jsp");  // Redirecting to the login page after logout
    }
}
