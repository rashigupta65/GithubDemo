package com.mindtree.service;

import java.util.List;

import com.google.gson.JsonElement;
import com.mindtree.model.State;

public interface StateService {
	public List<State> getAll();
	public boolean addState(State state) ;
	public List<State> getStates(String cname);
	public State getPopulation(String sname);
	public List<String> findByCountry(int cid);
	public State getStateByName(String sname);
}
