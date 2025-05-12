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
public class RegisterServlet extends HttpServlet {

    @EJB ClientFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Long phone = Long.parseLong(request.getParameter("phone"));
        
        Client client = createClient(username, password,phone);
        cfl.create(client);
        
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        session.setAttribute("phone", phone);
        
        RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
        disp.forward(request, response);
    }

    private Client createClient(String username, String password, Long phone) {
        Client ct = new Client(phone, username, password);
        return ct;
    }

}
