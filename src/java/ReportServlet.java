package controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




import java.awt.BorderLayout;
import java.awt.Container;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import models.Department;
import models.Region;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.query.JRHibernateQueryExecuterFactory;
 
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.swing.JRViewer;

import org.hibernate.Session;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import tools.HibernateUtil;

/**
 *
 * @author DELL
 */
public class ReportServlet extends HttpServlet {
Session session=HibernateUtil.getSessionFactory().openSession();
    Map<String,Object> param = new HashMap<>();
// 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
      
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Reporting Servlet";
    }
     public ReportServlet(String file) {
    
        report(file);

    }
    
     void report(String reportName) {
         param.put(JRHibernateQueryExecuterFactory.PARAMETER_HIBERNATE_SESSION, session);
        
        try {
            JasperDesign jd = JRXmlLoader.load("src/report/Report" + reportName + ".jrxml");
            JasperReport report = JasperCompileManager.compileReport(jd);
            JasperPrint jasperPrint=JasperFillManager.fillReport(report, param);
            JRViewer viewer = new JRViewer(jasperPrint);
            Container c = getContentPane();
            c.setLayout(new BorderLayout());
            c.add(viewer);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }

    private Container getContentPane() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
     
     
  
}