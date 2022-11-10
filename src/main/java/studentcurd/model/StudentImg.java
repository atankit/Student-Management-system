package studentcurd.model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Lob;

@Entity
public class StudentImg {
	
	@Lob
	private byte[] studentimg;

	public byte[] getStudentimg() {
		return studentimg;
	}

	public void setStudentimg(byte[] studentimg) {
		this.studentimg = studentimg;
	}

	public StudentImg(byte[] studentimg) {
		super();
		this.studentimg = studentimg;
	}

	public StudentImg() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "StudentImg [studentimg=" + Arrays.toString(studentimg) + "]";
	}
	
	
	

}
