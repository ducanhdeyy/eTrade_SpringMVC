package baitaplon.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category {
	 @Id
	 @Column(name="cateId")
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private int CateId;
	 @Column(name="cateName")
	 private String cateName;
	 @Column(name="status")
	 private boolean status;
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(int cateId, String cateName, boolean status) {
		super();
		CateId = cateId;
		this.cateName = cateName;
		this.status = status;
	}
	public int getCateId() {
		return CateId;
	}
	public void setCateId(int cateId) {
		CateId = cateId;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	 
	 
}