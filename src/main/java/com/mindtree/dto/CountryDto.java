package com.mindtree.dto;

import java.util.List;

import com.mindtree.model.State;

import lombok.Data;

@Data
public class CountryDto {
	private int cid;
	private String cname;
	private List<State> states;

	public CountryDto() {
		super();
	}

	public CountryDto(int cid, String cname, List<State> states) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.states = states;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public List<State> getStates() {
		return states;
	}

	public void setStates(List<State> states) {
		this.states = states;
	}

}
