package com.mo.web;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ColorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html");

        String color = request.getParameter("color");

        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head><title>Color Changer</title></head>");
        out.println("<body style='background-color:" + color + ";'>");

        out.println("<h2>The background color has been changed to " + color + "!</h2>");
        out.println("<form action='ColorServlet' method='post'>");
        out.println("<input type='submit' name='color' value='Red' style='background-color:red; color:white;'>");
        out.println("<input type='submit' name='color' value='Green' style='background-color:green; color:white;'>");
        out.println("<input type='submit' name='color' value='Blue' style='background-color:blue; color:white;'>");
        out.println("</form>");

        out.println("</body>");
        out.println("</html>");
    }
}

