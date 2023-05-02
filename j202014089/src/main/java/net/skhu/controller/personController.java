package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Category;
import net.skhu.dto.Person;
import net.skhu.mapper.CategoryMapper;

@Controller
@RequestMapping("person")
public class personController {

	@Autowired
	CategoryMapper categoryMapper;
	Person person;

	@GetMapping("edit")
	@RequestMapping("list")
	public String list(Model model) {
		List<Person> category = CategoryMapper.findAll();
		model.addAttribute("person", person);
		return "person/list";
	}

	@GetMapping("create")
	public String create(Model model) {
		model.addAttribute("person", new Person());
		return "person/edit";
	}

	@PostMapping("create")
	public String create(Model model, Person person) {
		categoryMapper.insert(person);
		return "redirect:list";
	}

	@GetMapping("edit")
	public String edit(Model model, int id) {
		Category person = categoryMapper.findOne(id);
		model.addAttribute("person", person);
		return "person/edit";
	}

	@PostMapping("edit")
	public String edit(Model model, Person person) {
		categoryMapper.update(person);
		return "redirect:list";
	}

	@RequestMapping("delete")
	public String delete(Model model, int id) {
		categoryMapper.delete(id);
		return "redirect:list";
	}

}
