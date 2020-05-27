package com.mustafakaplan.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Advertisements
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private int user_id;
	private String vehicle;
	private String brand;
	private String model;
	private String type;
	private String fuel;
	private String gear;
	private String city;
	private int year;
	private int km;
	private Date ad_date = new Date();
	
	@Column(length = 99999999)
	private String description;
	
	private int abc;
	private int airbag;
	private int immobilizer;
	private int hill;
	private int lane;
	private int cd; 
	private int bluetooth;  
	private int navigation;
	private int tv;
	private int entertainment;
	private int ac;
	private int cruise;
	private int camera;
	private int color;
	private int changing;
	
	private String pp;
	private String photo1;
	private String photo2;
	private String photo3;
	private String photo4;
	private String photo5;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public String getGear() {
		return gear;
	}
	public void setGear(String gear) {
		this.gear = gear;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getKm() {
		return km;
	}
	public void setKm(int km) {
		this.km = km;
	}
	public Date getAd_date() {
		return ad_date;
	}
	public void setAd_date(Date ad_date) {
		this.ad_date = ad_date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAbc() {
		return abc;
	}
	public void setAbc(int abc) {
		this.abc = abc;
	}
	public int getAirbag() {
		return airbag;
	}
	public void setAirbag(int airbag) {
		this.airbag = airbag;
	}
	public int getImmobilizer() {
		return immobilizer;
	}
	public void setImmobilizer(int immobilizer) {
		this.immobilizer = immobilizer;
	}
	public int getHill() {
		return hill;
	}
	public void setHill(int hill) {
		this.hill = hill;
	}
	public int getLane() {
		return lane;
	}
	public void setLane(int lane) {
		this.lane = lane;
	}
	public int getCd() {
		return cd;
	}
	public void setCd(int cd) {
		this.cd = cd;
	}
	public int getBluetooth() {
		return bluetooth;
	}
	public void setBluetooth(int bluetooth) {
		this.bluetooth = bluetooth;
	}
	public int getNavigation() {
		return navigation;
	}
	public void setNavigation(int navigation) {
		this.navigation = navigation;
	}
	public int getTv() {
		return tv;
	}
	public void setTv(int tv) {
		this.tv = tv;
	}
	public int getEntertainment() {
		return entertainment;
	}
	public void setEntertainment(int entertainment) {
		this.entertainment = entertainment;
	}
	public int getAc() {
		return ac;
	}
	public void setAc(int ac) {
		this.ac = ac;
	}
	public int getCruise() {
		return cruise;
	}
	public void setCruise(int cruise) {
		this.cruise = cruise;
	}
	public int getCamera() {
		return camera;
	}
	public void setCamera(int camera) {
		this.camera = camera;
	}
	public int getColor() {
		return color;
	}
	public void setColor(int color) {
		this.color = color;
	}
	public int getChanging() {
		return changing;
	}
	public void setChanging(int changing) {
		this.changing = changing;
	}
	public String getPp() {
		return pp;
	}
	public void setPp(String pp) {
		this.pp = pp;
	}
	public String getPhoto1() {
		return photo1;
	}
	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}
	public String getPhoto2() {
		return photo2;
	}
	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}
	public String getPhoto3() {
		return photo3;
	}
	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}
	public String getPhoto4() {
		return photo4;
	}
	public void setPhoto4(String photo4) {
		this.photo4 = photo4;
	}
	public String getPhoto5() {
		return photo5;
	}
	public void setPhoto5(String photo5) {
		this.photo5 = photo5;
	}
}
