import javax.json.*;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;

public class Jsun {
	public static void main(String[] args)  {
		JsonObjectBuilder js=Json.createObjectBuilder();
		js.add("name", "srikanth");
		js.add("Occupation", "Dir");
		JsonObject person =js.build();
		System.out.println(person);
		

	}

}
