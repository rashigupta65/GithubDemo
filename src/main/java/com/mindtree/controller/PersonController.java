package com.mindtree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.google.gson.Gson;
import com.mindtree.model.Person;
import com.mindtree.model.State;
import com.mindtree.service.CountryService;
import com.mindtree.service.PersonService;
import com.mindtree.service.StateService;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Autowired
	PersonService ps;
	@Autowired
	StateService ss;
	@Autowired
	CountryService cs;

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String EnterDetails(Model m) {
		Person a = new Person();
		m.addAttribute("person", a);
		m.addAttribute("list", cs.getAll());
		m.addAttribute("list1", ss.getAll());
		return "detail-page2";
	}
	@RequestMapping(value = "/details1", method = RequestMethod.GET)
	public String EnterDetails1(Model m) {
		Person a = new Person();
		m.addAttribute("person", a);
		m.addAttribute("list", cs.getAll());
		m.addAttribute("list1", ss.getAll());
		return "display";
	}

	@RequestMapping(value = "/submitForm")
	public String submitForm(@ModelAttribute Person person, BindingResult result) {
		boolean isAdded = ps.addPerson(person);
		if (isAdded == true)
			return "success2";
		else
			return "failure";
	}

	@RequestMapping(value="/get1",method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("countries", cs.getAll());
		return "detail-page2";
	}
	@RequestMapping(value="/get")
	public String index1(ModelMap modelMap2) {
		modelMap2.put("countries", cs.getAll());
		return "display";
	}
	

	@ResponseBody
	@RequestMapping(value = "loadStatesByCountry/{cid}", method = RequestMethod.GET)
	public List<String> loadStatesByCountry(@PathVariable("cid") int cid) {
		return ss.findByCountry(cid);
	}
	
	@ResponseBody
	@RequestMapping(value = "/loadPop1/{sname}")
	public State loadPop(@PathVariable("sname") String sname) {
		State pp=ss.getPopulation(sname);
		return pp;
		
	}
}
