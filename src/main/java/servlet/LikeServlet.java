package servlet;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;
import model.Comment;


@WebServlet(name = "LikeServlet", urlPatterns = {"/likes"})
public class LikeServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String articleId = request.getParameter("articleId");
        String username = request.getParameter("username");
        Boolean isLike=false;
        
        DAO dao = new DAO();
     
        if (dao.getLike(articleId, username) != null)
        {
            dao.updateUnLike(articleId);
            dao.deleteLike(articleId, username);
            isLike = false;
        }
        else
        {
            dao.updateAddLike(articleId);
            dao.addLike(articleId, username);
            isLike = true;
        }
        
        Article article = dao.getArticle(articleId);
        List<Article> aTopStories = dao.getTopStories();
        List<Comment> aComment = dao.getAllCommentOfArticle(articleId);
        
        request.setAttribute("article", article);
        request.setAttribute("aTopStories", aTopStories);
        request.setAttribute("aComment", aComment);
        request.setAttribute("isLike", isLike);
        request.getRequestDispatcher("single-blog.jsp").forward(request, response); 
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
