<%@ page session="true" %>
<%
    // Check if the session exists and invalidate it
    if (session != null) {
        session.invalidate();  // Invalidate the session to log the user out
    }
    
    // Redirect the user to the login page after logging out
    response.sendRedirect("login.jsp");  // Redirect to login.jsp page
%>
