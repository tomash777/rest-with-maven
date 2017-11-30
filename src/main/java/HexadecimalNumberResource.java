//import org.json.JSONObject;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;



@Path("/hexadecimal")
public class HexadecimalNumberResource {


    @GET
    @Path("/{id}")
    public String getHexadecimal(@PathParam("id") int id){
        String a = Integer.toString(id);
        return a+a+a;
    }

}
