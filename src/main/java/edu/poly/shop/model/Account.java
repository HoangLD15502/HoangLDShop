package edu.poly.shop.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "accounts")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account implements Serializable {
	@Id
	@Column(length = 30)
	private String username;
	
	@Column(length = 30, nullable = false)
	private String password;
	
	@Column(columnDefinition = "nvarchar(50) not null")
	private String name;
	
	@Column(length = 20, nullable = false)
	private String phone;
	
	@Column(columnDefinition = "nvarchar(100) not null")
	private String email;
	
	@Column(nullable = false)
	private boolean role;
	
	@Temporal(TemporalType.DATE)
	private Date signUpDate;
	
	@OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
	private Set<Order> orders;
}
