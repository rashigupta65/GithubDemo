package com.mindtree.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mindtree.model.Country;
import com.mindtree.model.State;
import com.mindtree.repository.CountryRepo;
import com.mindtree.repository.StateRepo;
import com.mindtree.service.StateService;

@Service
public class StateImpl implements StateService {
	@Autowired
	StateRepo sr;
	@Autowired
	CountryRepo cr;

	@Override
	public List<State> getAll() {
		List<State> states = sr.findAll();
		return states;
	}

	@Override
	public boolean addState(State state) {
		state = sr.save(state);
		return true;
	}

	@Override
	public List<State> getStates(String cname) {
		List<Country> c = new ArrayList<>();
		c = cr.findAll();
		Country c1 = c.stream().filter(x -> x.getCname().equalsIgnoreCase(cname)).findFirst().get();
		return c1.getStates();
	}

	@Override
	public State getPopulation(String sname) {
		List<State> state = new ArrayList<>();
		state = sr.findAll();
		State p = state.stream().filter(c -> c.getSname().equals(sname)).findFirst().get();
		return p;
	}
	@Override
	public List<String> findByCountry(int cid) {
		return sr.findByCountry(cid);
	}
	@Override
	public State getStateByName(String sname) {
		List<State> c = new ArrayList<>();
		State c1=null;
		c = sr.findAll();
		c1 = c.stream().filter(x -> x.getSname().equalsIgnoreCase(sname)).findFirst().get();
		System.out.println(c1);
		return c1;
	}
}