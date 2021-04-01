package com.mindtree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mindtree.model.Country;

@Controller
@RequestMapping("/home")
public class ViewController {

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String EnterDetails2(Model m) {
		Country m1 = new Country();
		m.addAttribute("country", m1);
		return "megamenu";
	}
	@RequestMapping(value = "/view2", method = RequestMethod.GET)
	public String EnterDetails3() {
		
		return "media";
	}

}
