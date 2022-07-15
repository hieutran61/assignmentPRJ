
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
import model.Comment;
import model.Like;

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
    
    public Article getArticle(String articleId)
    {
        String sql = "select * from ARTICLE where ArticleID=?";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, articleId);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                return ((Article) new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getInt(9)));
            }
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
    
    public void updateAddLike(String articleId)
    {
	String sql = "UPDATE ARTICLE\n" +
                    "SET [Likes] = [Likes] +1\n" +
                    "WHERE ArticleID= ?;";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);       
            stm.executeUpdate();

        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void updateUnLike(String articleId)
    {
	String sql = "UPDATE ARTICLE\n" +
                    "SET [Likes] = [Likes] -1\n" +
                    "WHERE ArticleID= ?;";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);       
            stm.executeUpdate();

        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void updateArticle(String articleId, String title, String description, String content, String image, String cateId)
    {
        if (!image.equals(""))
        {
            String sql = "UPDATE ARTICLE\n" +
                        "SET Title = ?, Description = ?, Content = ?, Image = ?, CateID = ?\n" +
                        "WHERE ArticleID= ?;";

            try 
            {
                con = DBUtils.makeConnection();
                stm = con.prepareStatement(sql);
                stm.setString(1, title);
                stm.setString(2, description);
                stm.setString(3, content);
                stm.setString(4, image);
                stm.setString(5, cateId);
                stm.setString(6, articleId);

                stm.executeUpdate();

            } 
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        else
        {
            String sql = "UPDATE ARTICLE\n" +
                        "SET Title = ?, Description = ?, Content = ?, CateID = ?\n" +
                        "WHERE ArticleID= ?;";

            try 
            {
                con = DBUtils.makeConnection();
                stm = con.prepareStatement(sql);
                stm.setString(1, title);
                stm.setString(2, description);
                stm.setString(3, content);
                stm.setString(4, cateId);
                stm.setString(5, articleId);

                stm.executeUpdate();

            } 
            catch (Exception e) {
                e.printStackTrace();
            }
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
        if (!avatar.equals(""))
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
        else
        {
            String sql = "UPDATE ACCOUNT\n" +
                        "SET Password = ?, Fullname = ?, Role = ?, Status = ?\n" +
                        "WHERE Username = ?;";

            try 
            {
                con = DBUtils.makeConnection();
                stm = con.prepareStatement(sql);
                stm.setString(1, password);
                stm.setString(2, fullname);
                stm.setString(3, role);
                stm.setString(4, status);
                stm.setString(5, username);

                stm.executeUpdate();

            } 
            catch (Exception e) {
                e.printStackTrace();
            }
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
     public void deleteArticle(String articleId)
    {
	String sql = "DELETE FROM ARTICLE WHERE ArticleId = ?";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);                     
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
    
    //BEGIN DAO COMMENT
    public void addComment(String articleId, String username, String cmt, Timestamp timeComment)
    {
	String sql = "Insert into COMMENT\n" +
                    "values (?, ?, ?, ?)";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);
            stm.setString(2, username);
            stm.setString(3, cmt);
            stm.setTimestamp(4, timeComment);
            stm.executeUpdate();
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
        
    public List<Comment> getAllCommentOfArticle(String articleId)
    {
	List<Comment> list = new ArrayList<>();
	String sql = "select * from COMMENT where ArticleID=? ORDER BY TimeComment DESC";
	
	try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, articleId);
            rs = stm.executeQuery();               
	
            while (rs.next())
            {
                list.add((Comment) new Comment(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getTimestamp(5)));
            }
            return list;
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //END DAO COMMENT
    
    
    //BEGIN DAO LIKE
    public Like getLike(String articleId, String username)
    {
	String sql = "select * from [LIKE] where ArticleID = ? and username = ? ";
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);
            stm.setString(2, username);
            rs = stm.executeQuery();               
            while (rs.next())
            {
                return (Like)new Like(rs.getInt(1), rs.getString(2), rs.getString(3));  
            }
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
	return null;
    }
    
    public void addLike(String articleId, String username)
    {
	String sql = "INSERT INTO [LIKE]\n" +
                    "VALUES (?, ?);";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);
            stm.setString(2, username);
            stm.executeUpdate();
        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteLike(String articleId, String username)
    {
	String sql = "DELETE FROM [LIKE] WHERE ArticleID = ? and Username = ?";
	
	try 
        {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(sql);
	    stm.setString(1, articleId);       
            stm.setString(2, username);
            stm.executeUpdate();

        } 
	catch (Exception e) {
            e.printStackTrace();
        }
    }
    //END DAO LIKE
    
    
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        dao.addLike("21", "hieu");
        
    }

    
    
}
