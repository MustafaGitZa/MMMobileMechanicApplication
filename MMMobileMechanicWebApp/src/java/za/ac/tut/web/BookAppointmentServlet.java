/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.AppointmentFacadeLocal;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Appointment;

/**
 *
 * @author pc
 */
public class BookAppointmentServlet extends HttpServlet {

    @EJB AppointmentFacadeLocal afl;
    @EJB ClientFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try{
            HttpSession session = request.getSession();
            LocalDate date = LocalDate.parse(request.getParameter("date"));
            LocalTime time = LocalTime.parse(request.getParameter("time"));
            String service = request.getParameter("service");

            // Create Appointment
            Appointment appt = new Appointment(date, time, service);
            afl.create(appt);
            List<Appointment> appointments=afl.findAll();
            
            session.setAttribute("date", date);
            session.setAttribute("time", time);
            session.setAttribute("service", service);
            session.setAttribute("appointments", appointments);
            
            RequestDispatcher disp = request.getRequestDispatcher("bookAppointmentOutcome.jsp");
            disp.forward(request, response);
            }catch(Exception e){
                e.printStackTrace();
                response.sendRedirect("error.jsp");
            } 
    }
}
