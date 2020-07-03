package com.siva.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.siva.model.Student;
import com.siva.service.IStudentService;

@Controller
public class StudentController {
	
	@Autowired
	private IStudentService service;
	
	@GetMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("student", new Student());
		return "StudentRegister";	
	}
	
	//Register 
	@PostMapping("/save")
	public String save(@ModelAttribute Student student,Model model) {
		Integer id=service.saveStudent(student);
		model.addAttribute("info", "Student "+ id + " saved");
		model.addAttribute("student", new Student());
		return "StudentRegister";
		
	}
	
	//Fetching
	@GetMapping("/all")
	public String getAll(Model model) {
		List<Student> list=service.getAllStudents();
		model.addAttribute("list", list);
		return "StudentData";
		
	}
	
	//Delete
	@GetMapping("/delete")
	public String delete(@RequestParam Integer id) {
		if(service.isStudentExist(id)) {
			service.deleteStudent(id);
		}
		return "redirect:all";
		
	}
	
	//Show edit page
	@GetMapping("/edit")
	public String edit(@RequestParam Integer id,Model model) {
		model.addAttribute("student", service.getOneStudent(id));
		return "StudentEdit";
		
	}
	
	//Update operation
	@PostMapping("/update")
	public String update(@ModelAttribute Student student,Model model) {
		service.updateStudent(student);
		return "redirect:all";
		
	}

}
