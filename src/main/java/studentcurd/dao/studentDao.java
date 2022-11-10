package studentcurd.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import studentcurd.model.Student;
import studentcurd.model.StudentImg;

@Component
public class studentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addStudent(Student student) {
		 this.hibernateTemplate.saveOrUpdate(student);		
		
	}

	public List<Student> getStudents() {

		List<Student> students = this.hibernateTemplate.loadAll(Student.class);

		return students;
	}

	@Transactional
	public void deleteStudent(int sid) {
		Student s = this.hibernateTemplate.load(Student.class, sid);
		this.hibernateTemplate.delete(s);
	}

	public Student getStudent(int sid) {

		return this.hibernateTemplate.get(Student.class, sid);
	}
	@Transactional
	public void addImage(StudentImg img, HttpServletRequest request, @RequestParam("studentimg") CommonsMultipartFile file, Model model ) {
		
		byte[] data = file.getBytes();
		
	    String path = request.getServletContext().getRealPath("/")+"WEB-INF"+ File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();

	    try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			this.hibernateTemplate.save(fos);
			fos.close();

			model.addAttribute("filename", file.getOriginalFilename());
			System.out.println("file uploaded..");
		}catch (IOException e) {
			e.printStackTrace();
			System.out.println("Uploading error!!");
		}
	}

}
