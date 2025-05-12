/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pc
 */
public class AdminLoginServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String inputPhone = request.getParameter("admin_phone");
        String inputPassword = request.getParameter("admin_password");

        // Get the real admin credentials from web.xml (context parameters)
        ServletContext context = getServletContext();
        String adminPhone = context.getInitParameter("admin_phone");
        String adminPassword = context.getInitParameter("admin_password");

        if (adminPhone != null && adminPassword != null &&
            adminPhone.equals(inputPhone) && adminPassword.equals(inputPassword)) {

            // Valid admin credentials
            HttpSession session = request.getSession();
            session.setAttribute("admin_logged_in", true);
            session.setAttribute("admin_phone", inputPhone);

            response.sendRedirect("adminDashboard.jsp");
        } else {
            // Invalid credentials
            request.setAttribute("error", "Invalid phone number or password. You have access to ADMIN operations!");
            request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
        }
    }
}
