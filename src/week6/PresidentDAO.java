package week6;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

public class PresidentDAO {
	private static String fileName = "WEB-INF/presidents.csv";
	private ServletContext servletContext;
	Map<Integer, President> presidents = new HashMap<>();

	public PresidentDAO(ServletContext context) {
		System.out.println("Creating new StockFileDAO");
		servletContext = context;
		readJavaFile();
	}

	public PresidentDAO() {
		readJavaFile();
	}

	public void readJavaFile() {
		int counter = 1;
		System.out.println("Loading stocks from txt file");
		InputStream is = servletContext.getResourceAsStream(fileName);
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(is));
			String line;
			while ((line = in.readLine()) != null) {
				String[] token = line.split(", ");
				if (token[2].equals("UNK")) {
					token[2] = token[3];
					token[3] = "<br>";
				}
				presidents.put(counter++, new President(token[1], token[2], token[3], token[4], token[5], token[6]));

			}
			in.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(presidents);
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Map<Integer, President> getPresidents() {
		return presidents;
	}

	public void setPresidents(Map<Integer, President> presidents) {
		this.presidents = presidents;
	}

}
