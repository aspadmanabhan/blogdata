package com.blog;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class USER_AUTHORIZATION {
	@Id
	@GeneratedValue
private Integer USER_ROLE_ID;
private Integer USER_ID;
private String ROLE;
public Integer getUSER_ROLE_ID() {
	return USER_ROLE_ID;
}
public void setUSER_ROLE_ID(Integer uSER_ROLE_ID) {
	USER_ROLE_ID = uSER_ROLE_ID;
}
public Integer getUSER_ID() {
	return USER_ID;
}
public void setUSER_ID(Integer uSER_ID) {
	USER_ID = uSER_ID;
}
public String getROLE() {
	return ROLE;
}
public void setROLE(String rOLE) {
	ROLE = rOLE;
}

}
