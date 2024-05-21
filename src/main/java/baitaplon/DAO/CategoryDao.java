package baitaplon.DAO;

import java.util.List;

import baitaplon.entities.Category;

public interface CategoryDao {
	public List<Category> getCate();
	public Boolean create(Category category);
	public Boolean update(Category category);
	public Category getCategoryById(Integer cateId);
	public Boolean delete(Integer cateId);
	public List<Category> getCategoryByName(String cateName);
}
