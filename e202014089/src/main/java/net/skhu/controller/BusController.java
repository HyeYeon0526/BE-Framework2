package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Bus;
import net.skhu.dto.Category;
import net.skhu.mapper.CategoryMapper;

@Controller
@RequestMapping("bus")
public class BusController {
	@GetMapping("edit")
	public String edit(Model model) {
		model.addAttribute("bus", new Bus());
		return "bus/edit";
	}


	@PostMapping("edit")
	public String edit(Model model, Bus bus) {
		model.addAttribute("message", "저장했습니다.");
		return "bus/edit";
	}

	@GetMapping("create")
	public String create(Model model) {
		model.addAttribute("category", new Category());
		return "bus/create";
	}


	@PostMapping("create")
	public String create(Model model, Category category) {
		model.addAttribute("category",CategoryMapper.findAll());
		return "redirect:list";
	}

	@GetMapping("list")
	public String list(Model model) {
		model.addAttribute("bus", new Bus());
		return "bus/list";
	}


	@PostMapping("list")
	public String list(Model model, Bus bus) {
		model.addAttribute("message", "저장했습니다.");
		return "bus/list";
	}


}