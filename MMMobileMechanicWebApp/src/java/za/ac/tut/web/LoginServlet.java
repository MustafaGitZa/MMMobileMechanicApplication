/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Client;

/**
 *
 * @author pc
 */
public class LoginServlet extends HttpServlet {
    @EJB ClientFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Long phone = Long.parseLong(request.getParameter("phone"));
        String password = request.getParameter("password");
        
        Client client = cfl.login(phone, password);
        
        if(client!=null){
            session.setAttribute("client", client);
            session.setAttribute("username", client.getUsername());
            RequestDispatcher disp = request.getRequestDispatcher("dashboard.jsp");
            disp.forward(request, response);
        }else{
            response.sendRedirect("loginError.jsp");
        }
        //session.setAttribute("username", username);
        //session.setAttribute("password", password);
        
    }

   
}
