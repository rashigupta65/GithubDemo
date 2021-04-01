package com.mindtree.dto;

import java.util.List;

import com.mindtree.model.Country;
import com.mindtree.model.State;

import lombok.Data;

@Data
public class PersonDto {
	private int pid;
	private String pname;
	private String gender;

	private List<String> hobbies;
	private int cid;

	private int sid;

	private State state;

	private Country country;

	public PersonDto() {
		super();
	}

	public PersonDto(int pid, String pname, String gender, List<String> hobbies, int cid, int sid, State state,
			Country country) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.gender = gender;
		this.hobbies = hobbies;
		this.cid = cid;
		this.sid = sid;
		this.state = state;
		this.country = country;
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
