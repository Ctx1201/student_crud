package com.cl.core.mapper;

import com.cl.core.bean.Student;

import java.util.List;

/**
 * @author chen
 * @create 2020-06-20 9:08
 */
public interface StudentMapper {

    /**
     *  查询学生列表
     * @param student
     * @return
     */
    public List<Student> selectStudentList(Student student);

    /**
     *   查询学生个数
     * @param student
     * @return
     */
    public Integer  selectStudentListCount(Student student);

    /**
     *  根据学号查询学生
     * @param studentNumber
     * @return
     */
    public  Student  selectStudentByStudentNumber(String studentNumber);

    /**
     *  根据学生信息创建学生
     * @param student
     * @return
     */
    public Integer  creatStudent(Student student);

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
