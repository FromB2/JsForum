package kr.ac.kopo.jsforum.controller;

import java.util.List;

import kr.ac.kopo.jsforum.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.jsforum.model.Champ;
import kr.ac.kopo.jsforum.service.ChampService;

@Controller
@RequestMapping("/champ")
public class ChampController {
	final String path = "champ/";

	@Autowired
		ChampService service;
	
	@RequestMapping("/list")
		public String list(Model model, Pager pager) {
		List<Champ> list = service.list(pager);

		model.addAttribute("list", list);
		
		return path + "list";
	}
	@RequestMapping("/detail/{num}")
	public String detail(@PathVariable int num, Model model){
		Champ item = service.item(num);

		model.addAttribute("item",item);
		return  path + "detail";
	}

	
	@RequestMapping("/delete")
		public String delete(int num) {
		service.delete(num);
		
		return "redirect:list";
	}

	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
		public String add(Champ item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update")
		public String update(int num, Model model) {
		Champ item = service.item(num);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update")
		public String update(int num, Champ item) {
		service.update(item);
		
		return "redirect:list";
	}



}
