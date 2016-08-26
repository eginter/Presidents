package week6;

public class PresTest {
	public static void main(String[] args) {
		PresidentDAO pdao = new PresidentDAO();
		pdao.readJavaFile();
		for (President pres : pdao.getPresidents()) {
			System.out.println(pres.getFirstName());
			System.out.println(pres.getPresNumber());
		}
	}
}
