package Model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class Log {
int id;
Date date;
String type;
@Id
@GeneratedValue
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
}
