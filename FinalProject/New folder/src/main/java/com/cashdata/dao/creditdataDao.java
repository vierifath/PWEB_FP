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
import JSP.bean.creditdata;  
import static JSP.dao.creditdataDao.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;  


public class creditdataDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP_Projects", "root", ""); 
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(creditdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
        "insert into creditdata(dates,information,amount) values(?,?,?)");  
        ps.setString(1,u.getDates());  
        ps.setString(2,u.getInformation());  
        ps.setInt(3,u.getAmount());  
          

        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(creditdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("update creditdata set dates=?,information=?,amount=? where id=?");  
        ps.setString(1,u.getDates());  
        ps.setString(2,u.getInformation());  
        ps.setInt(3,u.getAmount());  
        ps.setInt(4,u.getId());  
        
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(creditdata u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from creditdata where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<creditdata> getAllRecords(){  
    List<creditdata> list=new ArrayList<creditdata>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from creditdata");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            creditdata u=new creditdata();  
            u.setId(rs.getInt("id"));  
            u.setDates(rs.getString("dates"));  
            u.setInformation(rs.getString("information"));  
            u.setAmount(rs.getInt("amount"));
                                                      
                   
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static creditdata getRecordById(int id){  
    creditdata u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from creditcard where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new creditdata();  
                        
            u.setId(rs.getInt("id"));  
            u.setDates(rs.getString("dates"));  
            u.setInformation(rs.getString("information"));  
            u.setAmount(rs.getInt("amount"));
           
                        
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  