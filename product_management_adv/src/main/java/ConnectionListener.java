import java.sql.*;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/jsp12","root","Nikunj@123");
			PreparedStatement psselect = cn.prepareStatement( "select * from product_info where pid = ?");
			context.setAttribute("select", psselect);
			PreparedStatement pssave = cn.prepareStatement("insert into product_info values(?,?,?,?,?)");
			context.setAttribute("save", pssave);
			context.setAttribute("st", cn.createStatement());
			PreparedStatement psdelete = cn.prepareStatement( "delete from product_info where pid = ?");
			context.setAttribute("delete", psdelete);
			PreparedStatement psupdate = cn.prepareStatement("update product_info set name=?,brand=?,quantity=?,price=? where pid=?");
			context.setAttribute("update", psupdate);
			System.out.println("connection created");
			
		}
		catch(Exception e) {
			System.out.print(e);
		}
	}

}
