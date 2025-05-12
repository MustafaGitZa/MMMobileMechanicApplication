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
import za.ac.tut.bl.AddressFacadeLocal;
import za.ac.tut.entities.Address;

/**
 *
 * @author pc
 */
public class SaveAddressServlet extends HttpServlet {

    @EJB AddressFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //String username = request.getParameter("username");
        HttpSession session = request.getSession();
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String postalCode = request.getParameter("postalCode");

        Address address = new Address(street, city, province, postalCode);
        //address.setUsername(username);

        afl.create(address);
        session.setAttribute("address", address);
        session.setAttribute("street", street);
        session.setAttribute("city", city);
        session.setAttribute("province", province);
        session.setAttribute("postalCode", postalCode);
        
        RequestDispatcher disp = request.getRequestDispatcher("bookAppointment.jsp");
        disp.forward(request, response);
    }
}
