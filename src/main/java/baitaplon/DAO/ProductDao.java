package baitaplon.DAO;

import java.util.List;

import baitaplon.entities.Product;

public interface ProductDao {
	public List<Product> getProducts();
	public List<Product> getProductByCategory(Integer cateId);
	public Product getProductById (Integer proId);
	public boolean insertProduct(Product pro);
	public Boolean update(Product product);
	public Boolean delete(Integer proId);
}
