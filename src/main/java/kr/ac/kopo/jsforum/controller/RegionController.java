package kr.ac.kopo.jsforum.controller;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import kr.ac.kopo.jsforum.model.Region;
import kr.ac.kopo.jsforum.service.RegionService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;


@Controller
@RequestMapping("/region")
public class RegionController {
	final String path = "region/";
	
	@Autowired
	RegionService service;
	
	
	@RequestMapping("/list")
		public String list(Model model) {
		List<Region> list =service.list();

		model.addAttribute("list",list);
		return path + "list";
	}
	@RequestMapping("/detail/{num}")
		public String detail(@PathVariable int num, Model model) {
		Region item = service.item(num);
		
		model.addAttribute("item", item);
		
		return path + "detail";
	}
	@GetMapping("/add")
		public String add(){
		return path +"add";
	}


}
