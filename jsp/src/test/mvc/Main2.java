package test.mvc;

public class Main2 {
	public static void main (String [] args) throws Exception{
		Class c = Class.forName("java.util.Date");
		Object obj = c.newInstance();
		System.out.println(obj);
	}
}
