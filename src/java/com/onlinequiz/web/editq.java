/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.onlinequiz.web;

import com.onlinequiz.dao.onDao;
import com.onlinequiz.model.quizB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class editq extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editq</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editq at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       response.setContentType("text/html");
       PrintWriter out = response.getWriter();
       int n;
       quizB q=new quizB();
  int status=0;
    /*    out.println(request.getParameter("quiz"));
        out.println(Integer.parseInt(request.getParameter("qid")));
       out.println(Integer.parseInt(request.getParameter("tot_q")));
       out.println(Integer.parseInt(request.getParameter("q_mark")));
       out.println(Integer.parseInt(request.getParameter("tot_tm")));
  q.setQid(Integer.parseInt(request.getParameter("qid")));*/
   q.setQtopic(request.getParameter("quiz"));
   int old=Integer.parseInt(request.getParameter("tot_q"));
   String p=request.getParameter("new_q");
   if( p == "")
   {
        n=0;
   }
   else
   {
    n=Integer.parseInt(request.getParameter("new_q"));
   //out.println(n);
   }
   q.setNqns(n);    
   n=n+old;
   q.setTq(n);
  
   
   
   q.setQm(Integer.parseInt(request.getParameter("q_mark")));
   q.setQtm(Integer.parseInt(request.getParameter("tot_tm")));
   q.setQid(Integer.parseInt(request.getParameter("qid")));
 status=onDao.editq(q);
  /* if(status!=0)
   {
  // out.println(i);*/
  if(status>0)
  {
   
       //response.setContentType("text/html"); 
//PrintWriter out = response.getWriter(); 
out.println("<script type=\"text/javascript\">");
   out.println("alert('qns added successfully!!! now add the qns with ans!!!');");
//   out.println("location='udashboard.jsp';");
   out.println("</script>");
 //request.setAttribute("status", status);
     response.sendRedirect("udashboard.jsp");}
    /*RequestDispatcher rd = request.getRequestDispatcher("showupdated_1.jsp");
  rd.forward(request, response);}
   }
   else
   {
      response.setContentType("text/html"); 
//PrintWriter out = response.getWriter(); 
out.println("<script type=\"text/javascript\">"); 
out.println("alert('data cannot be updated');"); 
out.println("</script>"); 
       response.sendRedirect("showupdated.jsp");
   }
        request.setAttribute("msg", "data updated successfully");
         RequestDispatcher rd = request.getRequestDispatcher("udashboard_1.jsp");
  rd.forward(request, response);*/
   //}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
