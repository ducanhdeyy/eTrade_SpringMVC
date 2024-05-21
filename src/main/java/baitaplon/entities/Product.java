package baitaplon.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")

public class Product {

	@Id
	@Column(name="proId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int proId;
	@Column(name="proName")
	private String proName;
	@Column(name="price")
	private float price;
	@Column(name="description")
	private String description;
	@Column(name="image")
	private String image;
	@ManyToOne
	@JoinColumn(name = "CateId",referencedColumnName = "CateId")
	private Category cateId ;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int proId, String proName, float price, String description, String image, Category cateId) {
		super();
		this.proId = proId;
		this.proName = proName;
		this.price = price;
		this.description = description;
		this.image = image;
		this.cateId = cateId;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Category getCateId() {
		return cateId;
	}
	public void setCateId(Category cateId) {
		this.cateId = cateId;
	}
	
	
	
}