package week6;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PresidentDAO {
	String fileName = "WebContent/WEB-INF/presidents.csv";
	List<President> presidents = new ArrayList<>();

	public void readJavaFile() {

		try {
			BufferedReader in = new BufferedReader(new FileReader(fileName));
			String line;
			while ((line = in.readLine()) != null) {
				String[] token = line.split(",");
				presidents.add(new President(token[1], token[2], token[3], token[4], token[5]));
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public List<President> getPresidents() {
		readJavaFile();
		return presidents;
	}

	public void setPresidents(List<President> presidents) {
		this.presidents = presidents;
	}
}
