package com.example.studentcrud.controller;

import com.example.studentcrud.model.Student;
import com.example.studentcrud.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
 
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    // Tüm öğrencileri listeleme
    @RequestMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("listStudents", studentService.getAllStudents());
        return "index";
    }

    // Öğrenci ekleme formu
    @RequestMapping("/showNewStudentForm")
    public String showNewStudentForm(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        return "new_student";
    }

    // Öğrenci kaydetme
    @RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student);
        return "redirect:/";
    }

    // Öğrenci güncelleme formu
    @RequestMapping("/showFormForUpdate/{id}")
    public String showFormForUpdate(@PathVariable(value = "id") int id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        return "update_student";
    }

    // Öğrenci silme
    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable(value = "id") int id) {
        studentService.deleteStudent(id);
        return "redirect:/";
    }
}
