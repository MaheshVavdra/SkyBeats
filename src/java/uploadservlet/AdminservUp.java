/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uploadservlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author tirth
 */
@WebServlet(name="AdminservUp",urlPatterns={"/Adminservup"})
@MultipartConfig(
        fileSizeThreshold = 1024*1024*1,
        maxFileSize = 1024*1024*10,
        maxRequestSize = 1024*1024*100
)

public class AdminservUp extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out= response.getWriter();
        
        Part filepart =request.getPart("file");
        String title= request.getParameter("title");
        String filename=filepart.getSubmittedFileName();
        for(Part part:request.getParts()){
            part.write("C:\\Users\\tirth\\Documents\\NetBeansProjects\\SkyBeats\\web\\Music\\"+filename);
        }
                                HttpSession session=request.getSession();  
                                session.setAttribute("filename", filename);
                                session.setAttribute("title", title);
                        response.sendRedirect("Adminservupload.jsp");
    }
    
}
