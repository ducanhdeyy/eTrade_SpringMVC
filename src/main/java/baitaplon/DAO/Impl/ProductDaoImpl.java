package baitaplon.DAO.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import baitaplon.DAO.ProductDao;
import baitaplon.entities.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired 
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getProducts() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Product p ORDER BY p.proId DESC").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
	            session.getTransaction().rollback();
	            session.close();
		}
		return null;
	}

	@Override
	public List<Product> getProductByCategory(Integer cateId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("From Product where cateId =: cateId");
			query.setParameter("cateId", cateId);
			List<Product> list = query.list();
			transaction.commit();
			return list;
		} catch (Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
		}
		finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	public Product getProductById(Integer proId) {
		 Session session = sessionFactory.openSession();
	        try {
	            session.beginTransaction();
	            Product pro = (Product) session.createQuery("from Product where proId = :proId")
	            .setParameter("proId", proId)
	            .uniqueResult();
	            session.getTransaction().commit();
	            return pro;           
	        } catch (Exception e) {
	            // TODO: handle exception
	            e.printStackTrace();
	            session.getTransaction().rollback();
	        }finally {
	            session.close();
	        }
	        return null;
	    }

	@Override
	public boolean insertProduct(Product pro) {
		Session session = sessionFactory.openSession();
		try {
			session.save(pro);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public Boolean update(Product product) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(product);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public Boolean delete(Integer proId) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.delete(getProductById(proId));
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return false;
	}


}