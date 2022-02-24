//package com.brianfair.javagroupproject.models;
//
//import java.util.Date;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.PrePersist;
//import javax.persistence.PreUpdate;
//import javax.persistence.Table;
//import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Size;
//
//import org.springframework.format.annotation.DateTimeFormat;
//
//
//
//
//@Entity
//@Table(name="Favorites")
//public class Favorite {
//	
//	public Favorite() {}
//	
//	public Favorite(User user, Order order, String name, String rating)
//	{
//		this.user = user;
//		this.order = order;
//		this.name = name;
//		this.rating = rating;
//	}
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private Long id;
//	
//    @NotNull
//    @Size(min = 2, max = 50)
//    private String name;
//	
//	@NotNull
//	@Size(min=3, max=100, message="Must be more than 3 characters long!")
//	private String rating;
//
//	// Monday Jan 27, 2021 = "E, MMM dd, yyyy"
//	@Column(updatable = false)
//	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
//    private Date createdAt;
//    
//	// Monday Jan 27, 2021 = "E, MMM dd, yyyy"
//	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
//    private Date updatedAt;
//	
//    @PrePersist
//    private void onCreate(){
//        this.createdAt = new Date();
//    }
//    
//    @PreUpdate
//    private void onUpdate(){
//        this.updatedAt = new Date();
//    }
//	
//    
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name="order_id")
//	private Order order;
//
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name="user_id")
//	private User user;
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getRating() {
//		return rating;
//	}
//
//	public void setRating(String rating) {
//		this.rating = rating;
//	}
//
//	public Date getCreatedAt() {
//		return createdAt;
//	}
//
//	public void setCreatedAt(Date createdAt) {
//		this.createdAt = createdAt;
//	}
//
//	public Date getUpdatedAt() {
//		return updatedAt;
//	}
//
//	public void setUpdatedAt(Date updatedAt) {
//		this.updatedAt = updatedAt;
//	}
//
//	public Order getOrder() {
//		return order;
//	}
//
//	public void setOrder(Order order) {
//		this.order = order;
//	}
//
//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}
//	
//	
//}	
	
	
