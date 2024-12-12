package com.example.studentcrud.dao;

import com.example.studentcrud.model.Student;
import java.util.List;

public interface StudentDAO {
    void saveStudent(Student student);
    List<Student> getAllStudents();
    Student getStudent(int id);
    void updateStudent(Student student);
    void deleteStudent(int id);
}
