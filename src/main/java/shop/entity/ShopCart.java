package shop.entity;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ShopCart")
public class ShopCart {
	
	@Id
	@GeneratedValue
	private int id;
	private int quantity;
	private BigDecimal amount;
	private boolean status;
	
	@ManyToOne
	@JoinColumn(name="userID")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="idFlower")
	private Flower flower;
	
	@Override
    public String toString() {
	    return "ShopCart [id=" + id + ", quantity=" + quantity + ", amount=" + amount + ", status=" + status +"]";
    }
}
