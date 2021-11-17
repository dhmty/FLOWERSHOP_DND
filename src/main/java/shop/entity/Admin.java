package shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
@Table(name = "Admin")
public class Admin {
	@Id
	@GeneratedValue
	private int id;
	private String username;
	private String password;
	private String name;
	
	@Override
    public String toString() {
	    return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name +"]";
    }
}
