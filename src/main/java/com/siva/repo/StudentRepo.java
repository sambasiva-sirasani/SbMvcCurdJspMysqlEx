package com.siva.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.siva.model.Student;

public interface StudentRepo extends JpaRepository<Student, Integer> {

}
