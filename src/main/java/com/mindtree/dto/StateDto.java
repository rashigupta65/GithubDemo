package com.mindtree.dto;


import com.mindtree.model.Country;

import lombok.Data;

@Data
public class StateDto {
	private int sid;

	private String sname;
	private long population;
	private int cid;

	private Country country;

	public StateDto() {
		super();
	}

	public StateDto(int sid, String sname, long population, int cid, Country country) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.population = population;
		this.cid = cid;
		this.country = country;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public long getPopulation() {
		return population;
	}

	public void setPopulation(long population) {
		this.population = population;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

}
