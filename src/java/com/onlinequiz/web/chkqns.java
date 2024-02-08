/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.onlinequiz.web;

import com.onlinequiz.dao.onDao;
import com.onlinequiz.model.qnsB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class chkqns extends HttpServlet {

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
            out.println("<title>Servlet chkqns</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet chkqns at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
       
        // qnsnew=(ArrayList)request.getParameter("obj");
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
   //     processRequest(request, response);
         PrintWriter out = response.getWriter();
        // ArrayList<qnsB> qnsnew=new ArrayList<>();
        //List<String> qnsnew = Arrays.asList(request.getParameterValues("obj"));
        ArrayList<qnsB> qnsnew;
        qnsnew = (ArrayList)(request.getAttribute("obj"));
        out.println(request.getParameter("ans"));
        //qnsB qb1=(qnsB)qnsnew.get(0);
           /* for(int i=0;i<qnsnew.size();i++)
                                               {
                                               qnsB qb=(qnsB)qnsnew.get(i);  
                                               out.println(qb.getQns());
                                               }*/
        /* for(int i=0;i<qnsnew.size();i++)
            {
             qnsB qb=(qnsB)qnsnew.get(i);
             out.println(qb.getQns());
            }*/
        //int m=onDao.calC(qnsnew);
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
