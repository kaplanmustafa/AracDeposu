package com.mustafakaplan.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cities
{
	@Id
	private int id;
	
	private String city_name;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
}
