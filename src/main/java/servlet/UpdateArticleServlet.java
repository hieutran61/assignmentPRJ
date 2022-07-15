/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Article;

@MultipartConfig
@WebServlet(name = "UpdateArticleServlet", urlPatterns = {"/updateArticle"})
public class UpdateArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String articleId = request.getParameter("articleId");
        
        DAO dao = new DAO();
        Article article = dao.getArticle(articleId);
        request.setAttribute("article", article);
        request.getRequestDispatcher("updateNews.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String articleId = request.getParameter("articleId");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String content = request.getParameter("content");
        String image="";
        String cateId = request.getParameter("cateId"); 
        
        Part part = request.getPart("image");
        if (!Paths.get(part.getSubmittedFileName()).getFileName().toString().equals(""))
        {
            //Upload Image
            String realPath = request.getServletContext().getRealPath("/images");
            System.out.println("Real path: " + realPath );  //Print real path
            String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();

            if (!Files.exists(Paths.get(realPath)))
            {
                Files.createDirectory(Paths.get(realPath));
            }

            part.write(realPath + "/" + fileName);

            image = fileName;
            System.out.println("Image name:" + image);  //print image name
        }
        
        
        DAO dao = new DAO();
        dao.updateArticle(articleId, title, description, content, image, cateId);
        response.sendRedirect("ManagerAriticle");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
