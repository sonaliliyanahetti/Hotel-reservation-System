<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <%@ page import="Connect.ConnectionProviderForSql" %>

        <%@ page import="java.sql.*" %>

            <!DOCTYPE html>

            <html>

            <head>

                <meta charset="ISO-8859-1">
                <title>Insert title here</title>

            </head>

            <body>

                <% 
                
                String id=request.getParameter("id"); 
                
                try{ 
                	
                	Connection con=ConnectionProviderForSql.getConnection();
                    Statement stmt=con.createStatement(); 
                    stmt.executeUpdate("delete from booking_details where booking_ID='"+id+"' ");
	                response.sendRedirect(" bookingView.jsp"); 
	           
                }catch(Exception e){ 
                	
                	System.out.println("error");
                
                } 
                
                %>


            </body>

            </html>