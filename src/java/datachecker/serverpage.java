/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datachecker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import java.util.Date;
import java.text.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.NullPointerException;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletContext;

/**
 *
 * @author amans
 */
public class serverpage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String data = request.getParameter("finalsubmit");
        ServletContext useremail = request.getSession().getServletContext();
        ServletContext type = request.getSession().getServletContext();

        if (data.equals("registration")) {
            String radioselect = request.getParameter("radioselect");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String number = request.getParameter("number");
            String radio = request.getParameter("radio");
            String state = request.getParameter("state");
            String address = request.getParameter("address");
            long phone = Long.parseLong(number);

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "aman");
                Statement st = conn.createStatement();
                if (radioselect.equals("buyur")) {
                    int i = st.executeUpdate("INSERT INTO registration VALUES('" + firstname + "','" + lastname + "','" + username + "','" + password + "','" + phone + "','" + radio + "','" + state + "','" + address + "',1)");
                } else if (radioselect.equals("farmer")) {
                    int i = st.executeUpdate("INSERT INTO farmerregistration VALUES('" + firstname + "','" + lastname + "','" + username + "','" + password + "','" + phone + "','" + radio + "','" + state + "','" + address + "',1)");

                }
                response.sendRedirect(request.getContextPath() + "/index.jsp");

                st.close();
                conn.close();

            } catch (Exception e) {
                System.out.println(e);
            }
        } else if (data.equals("login")) {
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            String radioselect = request.getParameter("radioselect");
            String check_pass = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "aman");
                Statement st = conn.createStatement();
                if (radioselect.equals("farmer")) {
                    ResultSet rs = st.executeQuery("SELECT password from farmerregistration where username = '" + uname + "'");
                    while (rs.next()) {
                        check_pass = rs.getString("password");
                    }
                    if (pass.equals(check_pass)) {
                        useremail.setAttribute("user_email", uname);
                        type.setAttribute("type", radioselect);
                        response.sendRedirect(request.getContextPath() + "/farmerpage.jsp");
                    } else {
                        PrintWriter pw = response.getWriter();
//                        pw.println("<script> alert('Wrong id or pass'); </script>");
//                        Thread.sleep(3000);
                        response.getWriter().append("<script> alert('Wrong id or pass');</script>");
                        ServletContext sc = getServletContext();
                        sc.getRequestDispatcher("/index.jsp").forward(request, response);
//                        response.sendRedirect(request.getContextPath() + "/index.jsp");
                        
//                        RequestDispatcher rd =  request.getRequestDispatcher("'"+request.getContextPath() + "/index.jsp"+"'");
//                        rd.include(request, response);
                    }

                } else if (radioselect.equals("buyur")) {
                    ResultSet rs = st.executeQuery("SELECT password from registration where username = '" + uname + "'");
                    while (rs.next()) {
                        check_pass = rs.getString("password");
                    }
                    if (pass.equals(check_pass)) {                     
                        useremail.setAttribute("user_email", uname);
                        type.setAttribute("type", radioselect);

                        response.sendRedirect(request.getContextPath() + "/buyur.jsp");
                    } else {
                        PrintWriter pw = response.getWriter();
                        pw.println("<script> alert('Wrong id or pass'); </script>");
                        response.sendRedirect(request.getContextPath() + "/index.jsp");

                    }
                }

                st.close();
                conn.close();

            } catch (Exception e) {
                System.out.println(e);
            }

        } else if (data.equals("addcrop")) {
            String cropname = request.getParameter("cropname");
            String price = request.getParameter("price");
            String available = request.getParameter("available");
            String max_amount = request.getParameter("max_amount");
            String transportation = request.getParameter("transportation");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "aman");
                Statement sti = connn.createStatement();

                int fi = sti.executeUpdate("INSERT INTO farmercrop VALUES('" + cropname + "','" + price + "','" + available + "','" + max_amount + "','" + transportation + "',1)");
               PrintWriter pw = response.getWriter();
                        pw.println("<script> alert('success');</script>");
                        
                        response.sendRedirect(request.getContextPath() + "/farmerpage.jsp");

            } catch (Exception e) {
                System.out.print(e);
            }
        }

    }
   
    }


