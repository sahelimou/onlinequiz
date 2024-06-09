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
public class newquiz extends HttpServlet {

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
            out.println("<title>Servlet newquiz</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet newquiz at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
       quizB qb1=new quizB();
        /*PrintWriter out = response.getWriter();
        out.println(request.getParameter("qt"));
        out.println(request.getParameter("mq"));
        out.println(request.getParameter("nq"));
        out.println(request.getParameter("tq"));
        out.println(request.getParameter("crtby"));
        */
        qb1.setQtopic(request.getParameter("qt"));
        
        qb1.setQm(Integer.parseInt(request.getParameter("mq")));
        qb1.setTq(Integer.parseInt(request.getParameter("nq")));
        qb1.setQtm(Integer.parseInt(request.getParameter("tq")));
        qb1.setCrtby(Integer.parseInt(request.getParameter("crtby")));
        int n=qb1.getTq();
        int i=onDao.newq(qb1);
        if(i>0)
   {
       request.setAttribute("qid", i);
       //request.setAttribute("num", n);
        
         RequestDispatcher rd = request.getRequestDispatcher("udashboard_1.jsp");
  rd.forward(request, response);
  
    }}

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
