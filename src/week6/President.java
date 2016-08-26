package week6;

public class President {
	String firstName;
	String middleName;
	String lastName;
	String termYears;
	String party;
	static int presCounter;
	int presNumber;
	
	public President(String firstName, String middleName, String lastName, String termYears, String party) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.termYears = termYears;
		this.party = party;
		presCounter++;
		this.presNumber = presCounter;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getTermYears() {
		return termYears;
	}
	public void setTermYears(String termYears) {
		this.termYears = termYears;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public static int getPresCounter() {
		return presCounter;
	}
	public static void setPresCounter(int presCounter) {
		President.presCounter = presCounter;
	}
	public int getPresNumber() {
		return presNumber;
	}
	public void setPresNumber(int presNumber) {
		this.presNumber = presNumber;
	}
	
	
}
