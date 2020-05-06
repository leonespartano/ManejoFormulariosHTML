package web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.FileWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;


@WebServlet("/Servlet")
public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String age = request.getParameter("age");
        String country = request.getParameter("country");
        //Se debe cambiar la ruta
        FileWriter fichero = new FileWriter("F:/Documents/GoogleDrive/NetBeansProjects/ManejoFormulariosHTML/src/main/webapp/Resultados/form01.txt");
        

            fichero.write("name = " + name +"\n");
            fichero.write("lastname = " + lastname +"\n");
            fichero.write("age = " + age +"\n");
            fichero.write("country = " + country +"\n");
            
            
           fichero.close();
           
            request.setAttribute("name", name);
            request.setAttribute("lastname", lastname);
            request.setAttribute("age", age);
            request.setAttribute("coutry", country);
           
            RequestDispatcher rd = request.getRequestDispatcher("/Resultados.jsp");
            rd.forward(request, response);
        
        out.close();

       
    }
}
