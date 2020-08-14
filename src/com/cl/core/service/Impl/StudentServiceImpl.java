package com.cl.core.service.Impl;

import com.cl.common.utils.Page;
import com.cl.core.bean.Student;
import com.cl.core.mapper.StudentMapper;
import com.cl.core.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.sql.Timestamp;
/**
 * @author chen
 * @create 2020-06-20 9:09
 */

@Service
public class StudentServiceImpl  implements StudentService {

    @Autowired
    private StudentMapper studentMapper;
    @Override
    public Page<Student> selectStudentList(Integer page, Integer rows,Student student) {
        Page<Student> pages=new Page<>();
        if(student !=null){
            if(student.getStu_name()!=null && !"".equals(student.getStu_name().trim())){
                student.setStu_name(student.getStu_name());
            }
            if(student.getStu_faculty()!=null && !"".equals(student.getStu_faculty().trim())){
                student.setStu_faculty(student.getStu_faculty());
            }
            if(student.getStu_profession()!=null && !"".equals(student.getStu_profession().trim())){
                student.setStu_profession(student.getStu_profession().trim());
            }
            if(student.getStu_class()!=null && !"".equals(student.getStu_class().trim())){
                student.setStu_class(student.getStu_class());
            }
          //  System.out.println(student);
         //   System.out.println("=======================");
            student.setStart((page-1)*rows);
            student.setRows(rows);
            pages.setRows(studentMapper.selectStudentList(student));
           // System.out.println(studentMapper.selectStudentList(student));
            pages.setTotal(studentMapper.selectStudentListCount(student));
            pages.setSize(rows);
            pages.setPage(page);
        }
        return pages;

    }

    @Override
    public Integer creatStudent(Student student) {
        Date date=new Date();
        Timestamp timestamp=new Timestamp(date.getTime());
        student.setStu_createtime(timestamp);
        return studentMapper.creatStudent(student);
    }

    @Override
    public Student selectStudentByStudentNumber(String studentNumber) {
        return studentMapper.selectStudentByStudentNumber(studentNumber);
    }

    @Override
    public Student selectStudentById(Integer id) {
        return studentMapper.selectStudentById(id);
    }

    @Override
    public Integer updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }

    @Override
    public Integer deleteStudent(Integer id) {
        return studentMapper.deleteStudent(id);
    }
}
