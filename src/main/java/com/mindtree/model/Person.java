package com.mindtree.model;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Person {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String pname;
	private String gender;
	@ElementCollection
	@CollectionTable(name = "hobbies", joinColumns = @javax.persistence.JoinColumn(name = "pid"))
	@Column(name = "hobbies")
	private List<String> hobbies;
	@JsonIgnore
	private int cid;
	@JsonIgnore
	private int sid;
	@ManyToOne
	@JsonIgnore
	private State state;
	@ManyToOne
	@JsonIgnore
	private Country country;

	public Person() {
		super();
	}

	public Person(int pid, String pname, String gender, List<String> hobbies, int cid,int sid,State state, Country country) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.gender = gender;
		this.hobbies = hobbies;
		this.cid=cid;
		this.sid=sid;
		this.state = state;
		this.country = country;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getHobbies() {
		return hobbies;
	}

	public void setHobbies(List<String> hobbies) {
		this.hobbies = hobbies;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

}
