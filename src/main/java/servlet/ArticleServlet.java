
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
import model.Category;

/**
 *
 * @author This PC
 */
@WebServlet(name = "ArticleServlet", urlPatterns = {"/home"})
public class ArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        DAO dao = new DAO();
        List<Article> aArticle3Days = dao.getArticle3Days();
        List<Article> aArticleLatest = dao.getLatestArticle();
        List<Article> aTopStories = dao.getTopStories();
        List<Category> aAllCategory = dao.getAllCategory();
        
        request.setAttribute("aArticle3Days", aArticle3Days);
        request.setAttribute("aArticleLatest", aArticleLatest);
        request.setAttribute("aTopStories", aTopStories);
        request.setAttribute("aAllCategory", aAllCategory);
        
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
