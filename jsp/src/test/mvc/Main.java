package test.mvc;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

public class Main {
	public static void main(String [] args) throws Exception{
		Map commandMap = new HashMap();
		String path = "C:\\Users\\user1\\git\\JSP\\jsp\\WebContent\\WEB-INF\\properties\\command.properties";
		Properties pr = new Properties();
		FileInputStream fis = new FileInputStream(path);
		pr.load(fis);
		Iterator iter = pr.keySet().iterator();
		while (iter.hasNext()) {
			String key  = (String)iter.next();
			String value = pr.getProperty(key);
			//System.out.println("key= " + key + ", value = " + value);
			Class c = Class.forName(value);
			Object obj = c.newInstance();
			commandMap.put(key, value);
		}
		
		String uri = "/jsp/test/main/nhn";
		Super s = (Super)commandMap.get(uri);
		s.add();
	}
}
