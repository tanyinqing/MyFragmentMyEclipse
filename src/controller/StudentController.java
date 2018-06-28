package controller;

import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.StudentService;

import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController extends BaseController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("queryAll")
    private String queryAll() {
        session.setAttribute("students", studentService.queryAll());
        return "redirect:/students.jsp";
    }

    @RequestMapping("queryAllJson")
    @ResponseBody
    private List<Student> queryAllJson() {
        /*session.setAttribute("students", studentService.queryAll());
        return "redirect:/students.jsp";*/
        return studentService.queryAll();
    }


    @RequestMapping("studentCourses/{id}")
    private String studentCourses(@PathVariable int id) {
        session.setAttribute("student", studentService.queryOne("studentCourses", id));
        return "redirect:/student.jsp";
    }

    @RequestMapping("studentCoursesJson/{id}")
    @ResponseBody
    private Student studentCoursesJson(@PathVariable int id) {
       /* session.setAttribute("student", studentService.queryOne("studentCourses", id));
        return "redirect:/student.jsp";*/
        return studentService.queryOne("studentCourses", id);
    }
}
