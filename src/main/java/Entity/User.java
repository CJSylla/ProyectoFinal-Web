package Entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    // Attributes
    @Id
    @Column(name = "USERNAME", length = 20)
    private String username;

    @Column(name = "FIRSTNAME", length = 50, nullable = false)
    private String firstName;
    @Column(name = "LASTNAME", length = 100, nullable = false)
    private String lastName;

    @Column(name = "PASSWORD", length = 30, nullable = false)
    private String password;

    @Column(name = "ADMIN")
    private boolean admin;

    // Constructors
    public User(){

    }

    public User(String username, String firstName, String lastName, String password,  boolean admin){

        this.setUsername(username);
        this.setFirstName(firstName);
        this.setLastName(lastName);
        this.setPassword(password);
        this.setAdmin(admin);

    }

    // Getters & Setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }
}
