package studentcurd.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import studentcurd.dao.studentDao;
import studentcurd.model.Student;
import studentcurd.model.StudentImg;

@Controller
public class MainController {

	@Autowired
	private studentDao dao;

	@RequestMapping("/")
	public String home(Model m) {
		m.addAttribute("key", "Student Home");
		return "index";
	}

	// add student form
	@RequestMapping("/add-student")
	public String addStudent(Model model) {

		model.addAttribute("title", "Add Student");

		return "addstudent";
	}

	// handler add student form

	@RequestMapping(value = "/addsutudent-form", method = RequestMethod.POST)
	public RedirectView handleStudent(@ModelAttribute Student student, HttpServletRequest request,
			@RequestParam("studentimg") CommonsMultipartFile file, Model model) {

		System.out.println(student);

		dao.addStudent(student);

		List<Student> students = dao.getStudents();
		System.out.println(students);

		byte[] data = file.getBytes();
		String path = request.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "img" + File.separator + student.getId()
				+ file.getOriginalFilename().substring(file.getOriginalFilename().length() - 4);

		System.out.println(path);
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			model.addAttribute("path", path);
			System.out.println("file uploaded..");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Uploading error!!");
		}
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");

		return redirectView;
	}

	@RequestMapping("/studentlist")
	public String StudentList(@ModelAttribute Student student, Model m) {
		m.addAttribute("title2", "Student List");
		List<Student> students = dao.getStudents();
		m.addAttribute("studentKey", students);
		m.addAttribute("title2", "Student List");
		return "studentlist";
	}

	// Delete handler-------------------------
	@RequestMapping("/delete/{studentId}")
	public RedirectView deleteStudent(@PathVariable("studentId") int studentId, HttpServletRequest request) {
		this.dao.deleteStudent(studentId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/studentlist");
		return redirectView;
	}

	// update handle------------------------------
	@RequestMapping("/update/{studentId}")
	public String updateForm(@PathVariable("studentId") int sid, Model model) {

		Student student = this.dao.getStudent(sid);

		model.addAttribute("studentdata", student);
		model.addAttribute("titlekey", "Student Update");

		return "updateform";
	}
	@ExceptionHandler(value = Exception.class)
	public String excetionHandler(Model model) {
		
		model.addAttribute("exp", "Exception has occured..");		
		return "exp_handler_page";
	}

}
