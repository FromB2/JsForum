package kr.ac.kopo.jsforum.controller;


import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.model.User;
import kr.ac.kopo.jsforum.service.FreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/free")
public class FreeController {
	final String path = "free/";

	@Autowired
	FreeService service;

	@RequestMapping("/list")
	public String list(Model model){
		List<Free> list = service.list();

		model.addAttribute("list", list);
				return path + "list";
	}

	@GetMapping("/add")
	public String add(){

		return path + "add";
	}
	@PostMapping("/add")
	public String add(Free item, @SessionAttribute User user){
		item.setId( user.getId() );
		service.add(item);

		return "redirect:list";
	}

	@GetMapping("/detail/update/{num}")
	public String update(@PathVariable int num, Model model){
		Free item = service.item(num);
		model.addAttribute("item", item);

		return path +"/update";
	}

	@PostMapping("/detail/update/{num}")
	public String update(@PathVariable int num, Free item){
		item.setNum(num);
		service.update(item);

		return "redirect:../{num}";
	}

	@RequestMapping("/detail/{num}")
	public String detail(@PathVariable int num, Model model) {
		Free item = service.item(num);
		model.addAttribute("item", item);
		return path + "detail";
		}

		@RequestMapping("/detail/delete/{num}")
	public String delete(@PathVariable int num) {
			service.delete(num);
			return "redirect:/free/list";
		}
	}
