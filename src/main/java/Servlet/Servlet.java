package Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String str1 = req.getParameter("fileRoot");

        File file = new File(str1);
        if(file.isFile()){
            req.getRequestDispatcher("/DownlandServlet").forward(req, resp);
        }
        else if(file.isDirectory()){
System.out.println("ssss");
        }

    }
}
