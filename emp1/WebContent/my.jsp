<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.*,javax.sql.*"%>
<%
    javax.naming.InitialContext ctx = null;
    javax.sql.DataSource ds = null;
    try {
        ctx = new javax.naming.InitialContext();
        ds = (javax.sql.DataSource) ctx.lookup("java:comp/env/jdbc/db");
      // ds = (javax.sql.DataSource) ctx.lookup("mysqldb");
        Connection con = ds.getConnection();
        PreparedStatement ps=con.prepareStatement("create Table testwebsphere(name varchar2(23))");
        ps.executeUpdate();
        out.println("table created");
    } catch (NamingException e) {
        System.out.println("peformanceappraisalstatus: COULDN'T CREATE CONNECTION!");
        e.printStackTrace();
    }        

%>