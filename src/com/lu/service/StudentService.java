package com.lu.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lu.domain.Student;

@Service
@Transactional
public class StudentService extends BaseService<Student>{

}
