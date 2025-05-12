/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pc
 */
public class BookingTypeServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String bookingType = request.getParameter("booking_type");
        HttpSession session = request.getSession();

        session.setAttribute("booking_type", bookingType);

        if ("Yes".equalsIgnoreCase(bookingType)) {
            response.sendRedirect("enterAddress.jsp");
        } else {
            response.sendRedirect("displayMechanicAddress.jsp");
        }
    }

}
