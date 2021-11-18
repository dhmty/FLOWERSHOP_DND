package shop.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[User]")
public class User {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String password;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
	private Date created;
	
	@OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
	private Collection<ShopCart> shopCarts;

	@OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
	private Collection<Transaction> transactions;
	
	@Override
    public String toString() {
	    return "User [id=" + id + ", name=" + name + ", password=" + password + ", address=" + address +", created=" + created +"]";
    }
}
