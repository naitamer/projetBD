import java.sql.*;

/**
 * Created by ounissa on 2019-04-09.
 */
public class ConnexionBD {
    public static void main (String arg []) throws ClassNotFoundException {
        Connection c =null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://postgres.iro.umontreal.ca:5432/naitameo", "naitameo_app", "meop115N");
            String sql ="select * from utilisateurs";
            PreparedStatement ps = c.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                System.out.println(rs.getString("nom"));
            }
            rs.close();
            ps.close();
            c.close();
            //c.createStatement().execute("set search_path to projetbd;");
            //c.setAutoCommit(false);
        } catch (SQLException e ) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(0);
        }

    }
}
