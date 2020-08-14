package com.cl.core.service;

import com.cl.common.utils.Page;
import com.cl.core.bean.Student;


/**
 * @author chen
 * @create 2020-06-20 9:08
 */
public interface StudentService {

    /**
     * 查询学生列表
     * @param page  当前页
     * @param rows  每页显示行数
     * @param student
     * @return
     */
    public Page<Student> selectStudentList(Integer page, Integer rows,Student student);

    /**
     *  根据学生信息创建学生
     * @param student
     * @return
     */
    public Integer  creatStudent(Student student);

    /**
     *  根据学号查询学生信息
     * @param studentNumber
     * @return
     */
    public  Student  selectStudentByStudentNumber(String studentNumber);

    /**
     * 根据id查询学生
     * @param id
     * @return
     */
    public  Student selectStudentById(Integer  id);

    /**
     *  修改学生信息
     * @param student
     * @return
     */
    public  Integer updateStudent(Student student);

    /**
     * 删除学生信息
     * @param id
     * @return
     */
    public  Integer deleteStudent(Integer id);
}
