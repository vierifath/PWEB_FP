package JSP.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import JSP.bean.User;

public class UserDao {

	public static Connection getConnection() {
		
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Projects", "root", "");	
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return connection;
		
	}
	
	public static int save(User u) {
		
		int status = 0;
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps = (PreparedStatement) connection.prepareStatement("insert into jsp_crud_user(Name, Username, Email, User_Password) values(?, ?, ?, ?)");
			
			ps.setString(1, u.getName());
			ps.setString(2, u.getUsername());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<User> getAllRecords() {
		
		List<User> list = new ArrayList<User>();
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps = (PreparedStatement) connection.prepareStatement("select * from jsp_crud_user");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				User u = new User();
				u.setName(rs.getString("Name"));
				u.setUsername(rs.getString("Username"));
				u.setEmail(rs.getString("Email"));
				
				list.add(u);
			}
			
		} catch( Exception e ) {
			System.out.println(e);
		}
		
		return list;
		
	}
	
	public static User getRecordByUsername( String username ) {
		
		User theUser = null;
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps = (PreparedStatement) connection.prepareStatement(" SELECT Name, Username, Email FROM jsp_crud_user WHERE Username=? ");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				theUser = new User();
				theUser.setName(rs.getString("Name"));
				theUser.setUsername(username);
				theUser.setEmail(rs.getString("Email"));
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		
		return theUser;
		
	}
	
	public static int update(User user) {
		int status = 0;
		
		try {
			Connection connection = getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement("update jsp_crud_user set Name=?, Email=?, User_Password=? where Username=?");
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getUsername());
			
			status = preparedStatement.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return status;
	}
	
}
