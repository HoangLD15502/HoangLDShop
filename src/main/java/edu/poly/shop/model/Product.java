package edu.poly.shop.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	private Long productID;
	
	@Column(columnDefinition = "nvarchar(100) not null")
	private String name;
	
	private String image;
	
	@Column(nullable = false)
	private int price;
	
	@Column(nullable = false)
	private int quantity;
	
	@Column(columnDefinition = "nvarchar(255) not null")
	private String desciption;	
	
	@Temporal(TemporalType.DATE)
	private Date postDate;
	
	@ManyToOne
	@JoinColumn(name = "categoryID")
	private Category category;
	
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private Set<OrderDetail> orderDetails; 
}
