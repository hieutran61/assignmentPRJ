/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import DAO.DAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CreateAccAdminServlet", urlPatterns = {"/createAcc"})
public class CreateAccAdminServlet extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("utf-8");
         
        request.getRequestDispatcher("createAccAdmin.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        String re_password = request.getParameter("re_password");
        String fullname = request.getParameter("fullname");
        String role = request.getParameter("role");
        String status = request.getParameter("status");
        
        DAO dao = new DAO();
        dao.addAccount(account, password, fullname, role, status);   
        response.sendRedirect("home");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
