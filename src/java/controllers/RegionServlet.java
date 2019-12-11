package controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import daos.GeneralDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Region;
import tools.HibernateUtil;

/**
 *
 * @author ASUS
 */
public class RegionServlet extends HttpServlet {

    private GeneralDao dao;

    public RegionServlet() {
        this.dao = new GeneralDao(HibernateUtil.getSessionFactory());
    }

    public RegionServlet(GeneralDao dao) {
        this.dao = dao;
    }

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegionServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegionServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            List<Region> regions = this.dao.select("Region");
            request.setAttribute("regions", regions);
            RequestDispatcher rd = request.getRequestDispatcher("listRegion.jsp");
            rd.forward(request, response);
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
       
    String id = request.getParameter("idRegion");
    String name = request.getParameter("nameRegion");
//    String gender = request.getParameter("gender");
//    boolean agree = request.getParameter("agree") != null;
//    String[] roles = request.getParameterValues("role");
//    String countryCode = request.getParameter("countryCode");
//    String[] animalIds = request.getParameterValues("animalId");
//    String message = request.getParameter("message");
    boolean saveButtonPressed = request.getParameter("save") != null;
        if (saveButtonPressed) {
            dao.save(new Region(Integer.parseInt(id), name));
            response.sendRedirect("listRegion.jsp");
        }else{
            dao.save(new Region(Integer.parseInt(id), name));
            response.sendRedirect("regionServlet");
        }
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
