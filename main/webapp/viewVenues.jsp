<%@page import="com.weddingplanner.module.Venues"%>
<%@page import="java.util.List"%>
<%@page import="com.weddingplanner.daoimpl.VenuesDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/ae23c8822d.js" crossorigin="anonymous"></script>
</head>
<body>
<%!
VenuesDaoimpl venueDaoImpl = new VenuesDaoimpl();
List<Venues> showVenue;%>
<%showVenue=venueDaoImpl.showVenue(); 
%>
<div class="venue">
 <%int count=0;
                for(Venues venue: showVenue){
                	System.out.println(venue.getVenueImages());
                	%>
        <div class="for-inline">
        <div class="image-container">
            <img src="<%=venue.getVenueImages()%>" alt="hall">
            <div class="title">
                <h2>venue name: <%=venue.getVenueName() %></h2>
                
                <pre><i class="fas fa-map-marker-alt"></i> <%=venue.getVenueArea() %>   <i class="fas fa-hotel"></i> <%=venue.getVenueType() %></pre>
            </div>
        </div>
        </div>
        </div>
        
           <% count ++;
            if(count==3){ %> 
             <%count=0; }}%>  
</body>
</html>