package shop.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
@Table(name ="Transaction")
public class Transaction {
	@Id
	@GeneratedValue
	private int id;
	private boolean status;
	private String customerName;
	private String customerEmail;
	private String customerPhone;
	private String customerAddress;
	private BigDecimal amount;
	private String message;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
	private Date created;
	
	@ManyToOne
	@JoinColumn(name="userID")
	private User user;
	
	@OneToMany(mappedBy = "transaction", fetch = FetchType.EAGER)
	private Collection<Order> orders;
	
	@Override
    public String toString() {
	    return "Transaction [id=" + id + ", userId=" + user.toString() + ", customerName=" + customerName + ", customerAddress=" + customerAddress +", created=" + created +"]";
    }

}
