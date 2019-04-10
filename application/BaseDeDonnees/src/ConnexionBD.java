import java.sql.*;

/**
 * Created by ounissa on 2019-04-09.
 */
public class ConnexionBD {
    public static Connection connectTobd()  {
        Connection c =null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://postgres.iro.umontreal.ca:5432/naitameo",
                    "naitameo_app", "meop115N");
            c.createStatement().execute("set search_path to projetBD;");
            c.setAutoCommit(false);

        } catch (SQLException e ) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(0);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return c;
    }


}
