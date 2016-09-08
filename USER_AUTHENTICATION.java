package com.blog;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class USER_AUTHENTICATION {
	@Id
	@GeneratedValue
private Integer USER_ID;
@NotEmpty
private String USER_NAME;
@NotEmpty
private String PASSWORD;

private Boolean ENABLED;
@NotEmpty
private String address;
@NotEmpty
private String phone;
@NotEmpty
private String email;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="USER_ID")
private USER_AUTHORIZATION authorizeUser;


public USER_AUTHORIZATION getAuthorizeUser() {
	return authorizeUser;
}
public void setAuthorizeUser(USER_AUTHORIZATION authorizeUser) {
	this.authorizeUser = authorizeUser;
}
public Integer getUSER_ID() {
	return USER_ID;
}
public void setUSER_ID(Integer uSER_ID) {
	USER_ID = uSER_ID;
}
public String getUSER_NAME() {
	return USER_NAME;
}
public void setUSER_NAME(String uSER_NAME) {
	USER_NAME = uSER_NAME;
}
public String getPASSWORD() {
	return PASSWORD;
}
public void setPASSWORD(String pASSWORD) {
	PASSWORD = pASSWORD;
}
public Boolean getENABLED() {
	return ENABLED;
}
public void setENABLED(Boolean eNABLED) {
	ENABLED = eNABLED;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

}
