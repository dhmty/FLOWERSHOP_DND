package shop.entity;

import java.math.BigDecimal;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name ="Flower")
public class Flower {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private BigDecimal price;
	private String contents;
	private int discount;
	private String image;
	private int views;
//	
//	@OneToMany(mappedBy = "flower", fetch = FetchType.EAGER)
//	private Collection<ShopCart> shopCarts;
	
//	@OneToMany(mappedBy = "flower", fetch = FetchType.EAGER)
//	private Collection<Order> orders;
	
	@Override
    public String toString() {
	    return "Flower [id=" + id + ", name=" + name + ", price=" + price + ", contents=" + contents +", discount=" + discount +", image=" + image +", views=" + views +"]";
    }
	
}
