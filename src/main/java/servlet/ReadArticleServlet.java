package servlet;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Article;
import model.Comment;

@WebServlet(name = "ReadArticleServlet", urlPatterns = {"/read"})
public class ReadArticleServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        HttpSession session = request.getSession();
        String articleId = request.getParameter("articleId");
        Boolean isLike = false;
        DAO dao = new DAO();
        
        Article article = dao.getArticle(articleId);
        List<Comment> aComment = dao.getAllCommentOfArticle(articleId);
        List<Article> aTopStories = dao.getTopStories();
        if (session.getAttribute("acc") != null)
        {
            if (dao.getLike(articleId, ((Account)session.getAttribute("acc")).getUsername()) != null)
            {
                isLike = true;
            }
            else
            {
                isLike = false;
            }
        }
        
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
        
        String articleId = request.getParameter("articleId");
        String username = request.getParameter("username");
        String cmt = request.getParameter("cmt");
        Timestamp timeComment = new Timestamp(System.currentTimeMillis());
        
        DAO dao = new DAO();
        dao.addComment(articleId, username, cmt, timeComment);
        
        Article article = dao.getArticle(articleId);
        List<Article> aTopStories = dao.getTopStories();
        List<Comment> aComment = dao.getAllCommentOfArticle(articleId);
        
        request.setAttribute("article", article);
        request.setAttribute("aTopStories", aTopStories);
        request.setAttribute("aComment", aComment);
        request.getRequestDispatcher("single-blog.jsp").forward(request, response);   
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
