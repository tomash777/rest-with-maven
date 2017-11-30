//import org.json.JSONObject;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;



@Path("/roman")
public class RomanNumberResource {
    private String romanNumber;


    @GET
    @Path("/{id}")
    public String getRoman(@PathParam("id") int id){
        String a = Integer.toString(id);
        return a+a;
    }

}
