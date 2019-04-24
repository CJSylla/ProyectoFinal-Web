import static spark.Spark.setPort;
import static spark.Spark.staticFiles;

public class Main {

    public static void main(String[] args) throws Exception {
        ProcessBuilder process = new ProcessBuilder();
        Integer port;
        if (process.environment().get("PORT") != null) {
            port = Integer.parseInt(process.environment().get("PORT"));
        } else {
            port = 4567;
        }

        setPort(port);

        staticFiles.location("/public"); // Static files

        //staticFileLocation("/public");

        DatabaseManager.BootDataBase();

        pageCreator pages = new pageCreator();
    }
}
