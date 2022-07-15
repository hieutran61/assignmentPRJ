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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Account;

@MultipartConfig
@WebServlet(name = "UpdateAccountServlet", urlPatterns = {"/updateAccount"})
public class updateAccountServlet extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
       
        
            String username = request.getParameter("username");
            DAO dao = new DAO();
            Account acc = dao.getAccount(username);
            request.setAttribute("acc", acc);

            request.getRequestDispatcher("updateAccount.jsp").forward(request, response);
        
          
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String mk = request.getParameter("mk");
        String username = request.getParameter("username");
        String old_password = request.getParameter("old-password");
        String new_password = request.getParameter("new-password");
        String re_password = request.getParameter("re-password");
        String fullname = request.getParameter("fullname");
        String avatar= "";
        String role = request.getParameter("role");
        String status = request.getParameter("status");
        Part part = request.getPart("avatar");
        
        //Upload Image
        String realPath = request.getServletContext().getRealPath("/images");
        System.out.println("Real path: " + realPath );  //Print real path
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        if (!fileName.equals(""))
        {
            if (!Files.exists(Paths.get(realPath)))
            {
                Files.createDirectory(Paths.get(realPath));
            }
            part.write(realPath + "/" + fileName);
            avatar = fileName;
        }
        
        if (new_password.equals("") || old_password.equals("") || re_password.equals(""))
        {
            new_password = mk;
            old_password = mk;
            re_password = mk;
        }
        
        DAO dao = new DAO();
        if (old_password.equals(dao.getAccount(username).getPassword()))
        {
            if (new_password.equals(re_password))
                dao.updateAccount(username, new_password, fullname, avatar, role, status);
        }

        response.sendRedirect("accManager");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
