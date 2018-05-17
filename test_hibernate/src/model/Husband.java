package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table

public class Husband {
int id;
String name;

Wife wife;
@Id
@GeneratedValue

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@ManyToOne
@JoinColumn
public Wife getWife() {
	return wife;
}
public void setWife(Wife wife) {
	this.wife = wife;
}
}
