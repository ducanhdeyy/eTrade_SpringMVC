package baitaplon.DAO.Impl;

import baitaplon.DAO.CheckoutProductDao;
import baitaplon.entities.CheckoutProduct;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CheckoutProductDaoImpl implements CheckoutProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Boolean create(CheckoutProduct checkoutProduct) {
        Session session = sessionFactory.openSession();
        try {
            session.save(checkoutProduct);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return false;
    }
}
