package shop.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name ="[Order]")
public class Order {

	@Id
	@GeneratedValue
	private int id;
	private int  quantity;
	private BigDecimal amount;
	private String note;
	private boolean status;
	
	@ManyToOne
	@JoinColumn(name="transactionID")
	private Transaction transaction;
	
	@ManyToOne
	@JoinColumn(name="idFlower")
	private Flower flower;
	
	@Override
    public String toString() {
	    return "Order [id=" + id + ", quantity=" + quantity + ", transaction=" + transaction.toString() + ", flower=" + flower.toString()  +"]";
    }
}
