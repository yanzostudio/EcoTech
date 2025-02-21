package com.ecotech.controller;

import com.ecotech.model.Project;
import com.ecotech.model.User;
import com.ecotech.dao.ProjectDAO;
import java.sql.Date;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ProjectController extends HttpServlet {
    private ProjectDAO projectDAO = new ProjectDAO();

    // Create project with userId (foreign key linking to User)
    public void createProject(String projectName, Date dateLogged, int userId) {
        Project project = new Project();
        project.setProjectName(projectName);
        project.setDateLogged(dateLogged);
        project.setUserId(userId);  // Set userId to link the project with the user

        projectDAO.createProject(project);  // Save the project in the database
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Retrieve the user object from the session
    User user = (User) request.getSession().getAttribute("Customer");

    // Check if user is logged in
    if (user == null) {
        // If user is not found in the session, redirect to login page
        response.sendRedirect("login.jsp");
        return;  // Stop further execution
    }

    // Retrieve other form parameters
    String projectName = request.getParameter("projectName");
    Date dateLogged = Date.valueOf(request.getParameter("dateLogged"));

    // Now create the project, passing the userId from the logged-in user
    createProject(projectName, dateLogged, user.getId());  // Make sure getId() works correctly

    // Redirect to success page after project is created
    response.sendRedirect("success.jsp");
}

}
