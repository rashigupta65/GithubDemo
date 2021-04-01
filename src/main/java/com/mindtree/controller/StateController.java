package com.mindtree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.mindtree.model.Country;
import com.mindtree.model.State;
import com.mindtree.service.CountryService;
import com.mindtree.service.StateService;

@Controller
@RequestMapping("/state")
public class StateController {
	@Autowired
	StateService ss;
	@Autowired
	CountryService cs;

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String EnterDetails(Model m) {
		State a = new State();
		m.addAttribute("state", a);
		m.addAttribute("list", cs.getAll());
		return "detail-page1";
	}

	@RequestMapping(value = "/submitForm")
	public String submitForm(@ModelAttribute State state, BindingResult result) {
		boolean isAdded = ss.addState(state);
		if (isAdded == true)
			return "success1";
		else
			return "failure";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/updateState/{sname}")
	public String updateState(@PathVariable("sname") String sname, Model m) {
		State s = null;
		s = ss.getStateByName(sname);
		System.out.println(s);
		m.addAttribute("state", s);
		return "updateState";
	}

	/**@RequestMapping(value = "/getAllData", method = RequestMethod.GET)
	public String GetAllStates(Model m) {
		List<State> s1 = null;
		s1 = ss.getAll();
		m.addAttribute("stateList", s1);
		return "detail-page1";
	}**/

	@RequestMapping(value = "/saveState", method = RequestMethod.POST)
	public String saveState(@ModelAttribute("state") State state, BindingResult br, Model m) {
		System.out.println(state.getSname());
		ss.addState(state);	
		return "success1";
	}
}
