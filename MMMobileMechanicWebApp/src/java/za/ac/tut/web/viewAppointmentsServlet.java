/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.AppointmentFacadeLocal;
import za.ac.tut.entities.Appointment;

/**
 *
 * @author pc
 */
public class viewAppointmentsServlet extends HttpServlet {
    @EJB AppointmentFacadeLocal afl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            List<Appointment> appointments = afl.findAll();
            
            session.setAttribute("appointments", appointments);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewAppointmentsOutcome.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
    
}

