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
	private Long ad_id;
	
	private Long user_id;
	private int active;
	private String vehicle;
	private String brand;
	private String model;
	private String type;
	private String fuel;
	private String gear;
	private String con;
	private String city;
	private int year;
	private int km;
	private long price;
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
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	
	public long getAd_id() {
		return ad_id;
	}
	public void setAd_id(long ad_id) {
		this.ad_id = ad_id;
	}
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
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
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public void setAd_id(Long ad_id) {
		this.ad_id = ad_id;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
}
