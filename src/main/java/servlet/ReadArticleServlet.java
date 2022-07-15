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

@WebServlet(name = "ReadArticleServlet", urlPatterns = {"/read"})
public class ReadArticleServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String articleId = request.getParameter("articleId");
        DAO dao = new DAO();
        Article article = dao.getArticle(articleId);
        List<Article> aTopStories = dao.getTopStories();
        
        request.setAttribute("article", article);
        request.setAttribute("aTopStories", aTopStories);
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
