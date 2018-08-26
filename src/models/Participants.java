package models;

public class Participants {

	private String StudentID;
	private String SportsID;
	private String PartName;
	private String Hundred;
	private String Twoh;
	private String Highj;
	private String Longj;
	private String Eight;
	
	public Participants(String StudentID, String SportsID, String PartName, String Hundred, String Twoh, String Highj,String Longj, String Eight) {
		this.StudentID = StudentID;
		this.SportsID = SportsID;
		this.PartName = PartName;
		this.Hundred = Hundred;
		this.Twoh = Twoh;
		this.Highj = Highj;
		this.Longj = Longj;
		this.Eight = Eight;
	}

	public String getStudentID() {
		return StudentID;
	}

	public void setStudentID(String studentID) {
		StudentID = studentID;
	}

	public String getSportsID() {
		return SportsID;
	}

	public void setSportsID(String sportsID) {
		SportsID = sportsID;
	}

	public String getPartName() {
		return PartName;
	}

	public void setPartName(String partName) {
		PartName = partName;
	}

	public String getHundred() {
		return Hundred;
	}

	public void setHundred(String hundred) {
		Hundred = hundred;
	}

	public String getTwoh() {
		return Twoh;
	}

	public void setTwoh(String twoh) {
		Twoh = twoh;
	}

	public String getHighj() {
		return Highj;
	}

	public void setHighj(String highj) {
		Highj = highj;
	}

	public String getLongj() {
		return Longj;
	}

	public void setLongj(String longj) {
		Longj = longj;
	}

	public String getEight() {
		return Eight;
	}

	public void setEight(String eight) {
		Eight = eight;
	}

	
	
	
}
