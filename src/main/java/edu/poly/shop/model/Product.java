package edu.poly.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ManyToAny;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productID;
	
	@ManyToOne
	@JoinColumn(name = "categoryID")
	private Category category;
	
	@Column(columnDefinition = "nvarchar(100) not null")
	private String name;
	
	@Column(nullable = false)
	private int price;
	
	@Column(nullable = false)
	private int quantity;
	
	@Column(length = 200)
	private String image;
	
	@Column(columnDefinition = "nvarchar(500) not null")
	private String desciption;
	
	@Column(nullable = false)
	private double discount;
	
	@Temporal(TemporalType.DATE)
	private Date postingDate;
	
	@Column(nullable = false)
	private short status;
}
