package servlet;

import DAO.DAO;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "CreateNewsServlet", urlPatterns = {"/createNews"})
public class CreateNewsServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        request.getRequestDispatcher("createNews.jsp").forward(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String content = request.getParameter("content");
        String image="";
        String author = request.getParameter("author");
        
        Part part = request.getPart("image");
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
        

        Timestamp timePost = new Timestamp(System.currentTimeMillis());
        String cateId = request.getParameter("cateId");
                
        DAO dao = new DAO();
        dao.createArticle(title, description, content, image, author, "0", timePost, cateId);
        response.sendRedirect("home");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
