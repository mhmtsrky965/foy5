package com.example.studentcrud.service;

import com.example.studentcrud.model.Student;
import java.util.List;

public interface StudentService {
    void saveStudent(Student student);
    List<Student> getAllStudents();
    Student getStudent(int id);
    void updateStudent(Student student);
    void deleteStudent(int id);
}
