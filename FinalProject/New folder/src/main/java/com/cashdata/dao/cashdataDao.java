/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author VIERI FATH
 */


package JSP.dao;  
import JSP.bean.cashdata;  
import static JSP.dao.cashdataDao.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;  


public class cashdataDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Projects", "root", ""); 
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(cashdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into cashdata(name,email,week1,week2,week3,week4,week5,week6,week7,week8,week9,week10) values(?,?,?,?,?,?,?,?,?,?,?,?)");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getEmail());  
        ps.setInt(3,u.getWeek1());  
        ps.setInt(4,u.getWeek2());  
        ps.setInt(5,u.getWeek3());  
        ps.setInt(6,u.getWeek4());  
        ps.setInt(7,u.getWeek5());  
        ps.setInt(8,u.getWeek6());  
        ps.setInt(9,u.getWeek7());  
        ps.setInt(10,u.getWeek8());  
        ps.setInt(11,u.getWeek9());  
        ps.setInt(12,u.getWeek10());  

        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(cashdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("update cashdata set name=?,email=?,week1=?,week2=?,week3=?,week4=?,week5=?,week6=?,week7=?,week8=?,week9=?,week10=? where id=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getEmail());  
        ps.setInt(3,u.getWeek1());  
        ps.setInt(4,u.getWeek2());  
        ps.setInt(5,u.getWeek3());  
        ps.setInt(6,u.getWeek4());  
        ps.setInt(7,u.getWeek5());  
        ps.setInt(8,u.getWeek6());  
        ps.setInt(9,u.getWeek7());  
        ps.setInt(10,u.getWeek8());  
        ps.setInt(11,u.getWeek9());  
        ps.setInt(12,u.getWeek10());  
        ps.setInt(13,u.getId());
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(cashdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from cashdata where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<cashdata> getAllRecords(){  
    List<cashdata> list=new ArrayList<cashdata>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from cashdata");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            cashdata u=new cashdata();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("email"));  
            u.setWeek1(rs.getInt("week1"));
            u.setWeek2(rs.getInt("week2"));
            u.setWeek3(rs.getInt("week3"));
            u.setWeek4(rs.getInt("week4"));
            u.setWeek5(rs.getInt("week5"));
            u.setWeek6(rs.getInt("week6"));
            u.setWeek7(rs.getInt("week7"));
            u.setWeek8(rs.getInt("week8"));
            u.setWeek9(rs.getInt("week9"));
            u.setWeek10(rs.getInt("week10"));                                                
                   
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static cashdata getRecordById(int id){  
    cashdata u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from cashdata where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new cashdata();  
                        
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("email"));  
            u.setWeek1(rs.getInt("week1"));
            u.setWeek2(rs.getInt("week2"));
            u.setWeek3(rs.getInt("week3"));
            u.setWeek4(rs.getInt("week4"));
            u.setWeek5(rs.getInt("week5"));
            u.setWeek6(rs.getInt("week6"));
            u.setWeek7(rs.getInt("week7"));
            u.setWeek8(rs.getInt("week8"));
            u.setWeek9(rs.getInt("week9"));
            u.setWeek10(rs.getInt("week10")); 
                        
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  