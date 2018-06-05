package listeners;
import javax.servlet.*;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import oracle.jdbc.pool.OracleDataSource;
@WebListener
public class DataBaseListeners implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0)  { 



	}


	public void contextInitialized(ServletContextEvent sce)  { 
		ServletContext s=sce.getServletContext();
		try {
			OracleDataSource o=new OracleDataSource();
			o.setUser("hr");
			o.setPassword("hr");
			o.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			s.setAttribute("oracleDataSource", o);
		}
		catch(Exception e) {
			System.out.println("Cant Connect");
			e.printStackTrace();
		}
	}
}


