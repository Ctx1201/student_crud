package com.cl.core.controller;

import com.cl.common.utils.Page;
import com.cl.core.bean.BaseDict;
import com.cl.core.bean.Student;
import com.cl.core.bean.UpdateStudentMsg;
import com.cl.core.service.BaseDictService;
import com.cl.core.service.StudentService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author chen
 * @create 2020-06-18 16:25
 */

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private BaseDictService baseDictService;

    @Value("${student.faculty.type}")
    private String STUDENT_FACULTY;

    @Value("${student.profession.type}")
    private String STUDENT_PROFESSION;

    @Value("${student.classes.type}")
    private String STUDENT_CLASSES;

    @RequestMapping("student/list.action")
    // 显示学生信息列表
    public String list(@RequestParam(defaultValue = "1") Integer pages,
                       @RequestParam(defaultValue = "10") Integer rows, Student student, Model model) {
            System.out.println("Dao层"+student);
        List<BaseDict> faculty = baseDictService.selectByDictId(STUDENT_FACULTY);
        List<BaseDict> profession = baseDictService.selectByDictId(STUDENT_PROFESSION);
        List<BaseDict> studentClass = baseDictService.selectByDictId(STUDENT_CLASSES);
        Page<Student> page = studentService.selectStudentList(pages, rows, student);
        model.addAttribute("faculty", faculty);
        model.addAttribute("profession", profession);
        model.addAttribute("studentClass", studentClass);
        model.addAttribute("page", page);
        model.addAttribute("stuName", student.getStu_name());
        model.addAttribute("stuFaculty", student.getStu_faculty());
        model.addAttribute("stuProfession", student.getStu_profession());
        model.addAttribute("stuClass", student.getStu_class());
        return "student";
    }

    @RequestMapping("student/create.action")
    @ResponseBody
    // 创建学生
    public String createStudent(Student student) {
        System.out.println("Dao层" + student);
        Student stu = studentService.selectStudentByStudentNumber(student.getStu_number());
        if (stu == null) {
            Integer row = studentService.creatStudent(student);
            if (row > 0) {
                return "OK";
            } else {
                return "FALL";
            }
        } else {
            return "FALL";
        }

    }

    @RequestMapping("student/getStudentById.action")
    @ResponseBody
    // 通过id获取修改的学生信息
    public Student getStudentById(Integer id) {
        Student student = studentService.selectStudentById(id);
        System.out.println(student);

        return student;
    }

    @RequestMapping("student/update.action")
    @ResponseBody
    public String updateStudent(UpdateStudentMsg updateStudentMsg) {
        Student student = studentService.selectStudentById(updateStudentMsg.getStu_id());
        student.setStu_name(updateStudentMsg.getStu_name());
        student.setStu_faculty(updateStudentMsg.getStu_faculty());
        student.setStu_profession(updateStudentMsg.getStu_profession());
        student.setStu_class(updateStudentMsg.getStu_class());
        student.setStu_number(updateStudentMsg.getStu_number());
        student.setStu_mobile(updateStudentMsg.getStu_mobile());
        student.setStu_address(updateStudentMsg.getStu_address());
        Integer row = studentService.updateStudent(student);
        if (row > 0) {
            return "OK";
        } else {
            return "FALL";
        }
    }

    @RequestMapping("student/delete.action")
    @ResponseBody
    public String deleteStudent(Integer id){
        Integer row = studentService.deleteStudent(id);
        if (row > 0) {
            return "OK";
        } else {
            return "FALL";
        }
    }

}
