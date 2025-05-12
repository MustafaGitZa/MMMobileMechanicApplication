/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Client;

/**
 *
 * @author pc
 */
@Stateless
public class ClientFacade extends AbstractFacade<Client> implements ClientFacadeLocal {

    @PersistenceContext(unitName = "MobileMechanicEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ClientFacade() {
        super(Client.class);
    }

    @Override
    public Client login(Long phone, String password) {
        Client ct;
        try {
            Query query = em.createQuery("SELECT c FROM Client c WHERE c.id = :phone AND c.password = :password");
            query.setParameter("phone", phone);
            query.setParameter("password", password);
            ct = (Client) query.getSingleResult();
            
        } catch (Exception e) {
            return null;
        }
        return ct;
        
    }
    
}
