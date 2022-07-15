
package DAO;

import helpers.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Article;
import model.Category;

public class DAO {
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    
    //BEGIN DAO ARTICLE
    public List<Article> getAllArticle()
    {
        List<Article> list = new ArrayList<>();
	String sql = "select * from ARTICLE";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Article) new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getInt(9)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Article> getArticle3Days()
    {
        List<Article> list = new ArrayList<>();
	String sql = "SELECT * FROM ARTICLE\n" +
                    "WHERE DATEDIFF(year, TimePost, CURRENT_TIMESTAMP)=0 and DATEDIFF(month, TimePost, CURRENT_TIMESTAMP)=0 and DATEDIFF(day, TimePost, CURRENT_TIMESTAMP)<4\n" +
                    "ORDER BY NEWID()";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Article) new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getInt(9)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Article> getLatestArticle()
    {
        List<Article> list = new ArrayList<>();
	String sql = "SELECT TOP 5 * FROM ARTICLE\n" +
                    "ORDER BY TimePost DESC";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Article) new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getInt(9)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Article> getTopStories()
    {
        List<Article> list = new ArrayList<>();
	String sql = "SELECT TOP 5 * FROM ARTICLE\n" +
                    "WHERE DATEDIFF(year, TimePost, CURRENT_TIMESTAMP)=0 and DATEDIFF(month, TimePost, CURRENT_TIMESTAMP)=0\n" +
                    "ORDER BY Likes DESC";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Article) new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getInt(9)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void createArticle(String title, String description, String content, String image, String author, String likes, Timestamp timePost, String cateId)
    {
	String sql = "INSERT INTO ARTICLE\n" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, title);
            stm.setString(2, description);
            stm.setString(3, content);
            stm.setString(4, image);
            stm.setString(5, author);
            stm.setString(6, likes);
            stm.setTimestamp(7, timePost);
            stm.setString(8, cateId);

            stm.executeUpdate();
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    //END DAO ARTICLE
    
    //BEGIN DAO CATEGORY
    public List<Category> getAllCategory()
    {
        List<Category> list = new ArrayList<>();
	String sql = "SELECT * FROM CATEGORY";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Category) new Category(rs.getInt(1), rs.getString(2)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //END DAO CATEGORY
    
    //BEGIN DAO ACCOUNT
    public void addAccount(String username, String password, String fullname, String role, String status)
    {
	String sql = "INSERT INTO ACCOUNT\n" +
                    "VALUES (?, ?, ?, ?, ?);";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, fullname);
            stm.setString(4, role);
            stm.setString(5, status);
            stm.executeUpdate();
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
     public List<Account> getAllAccount() throws SQLException
    {
	List<Account> list = new ArrayList<>();
	String sql = "select * from ACCOUNT";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();               

			
            while (rs.next())
            {
                list.add((Account) new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getBoolean(6)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Account getAccount(String username)
    {
	String sql = "select * from ACCOUNT where username = ?";
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, username);
            rs = stm.executeQuery();               
            while (rs.next())
            {
                return (Account)new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getBoolean(6));  
            }
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
	return null;
    }
    public void updateAccount(String username, String password, String fullname,String avatar, String role, String status)
    {
	String sql = "UPDATE ACCOUNT\n" +
                    "SET Password = ?, Fullname = ?, Avatar=?, Role = ?, Status = ?\n" +
                    "WHERE Username = ?;";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, password);
            stm.setString(2, fullname);
            stm.setString(3, avatar);
            stm.setString(4, role);
            stm.setString(5, status);
            stm.setString(6, username);
                        
            stm.executeUpdate();

        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
     public void deleteAccount(String username)
    {
	String sql = "DELETE FROM ACCOUNT WHERE username = ?";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, username);                     
            stm.executeUpdate();

        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public Account login(String username, String password)
    {
        String sql = "select * from ACCOUNT where Username = ? and Password = ?";
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();               
            while (rs.next())
            {
                return (Account)new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getBoolean(6));  
            }
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
	return null;
    }
    //END DAO ACCOUNT
    
    
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getArticle3Days());
    }

    
    
}
