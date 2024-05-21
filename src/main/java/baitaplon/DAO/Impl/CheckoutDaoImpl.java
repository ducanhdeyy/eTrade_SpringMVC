package baitaplon.DAO.Impl;

import baitaplon.DAO.CheckoutDao;
import baitaplon.entities.Checkout;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CheckoutDaoImpl implements CheckoutDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Boolean create(Checkout checkout) {
        Session session = sessionFactory.openSession();
        try {
            session.save(checkout);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return false;
    }
}
