/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.onlinequiz.dao;

import com.onlinequiz.model.adminB;
import com.onlinequiz.model.qnsB;
import com.onlinequiz.model.qqnsB;
import com.onlinequiz.model.quizB;
import com.onlinequiz.model.regB;
import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class onDao {
    public static boolean validate(adminB a)
    {
        boolean status=false;
       try{
           Class.forName("com.mysql.jdbc.Driver");
       String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
       
        Connection dbCon = DriverManager.getConnection(dbURL, username, password);
        //Statement stmt = null;
        ResultSet rs = null;
       //String query ="select * from user1 where username=? and pwd=?";
       PreparedStatement ps=dbCon.prepareStatement("select * from admin where Adminid=? and pwd=?");
       
       ps.setString(1,a.getUid());
       ps.setString(2,a.getPwd());
       rs=ps.executeQuery();
       status=rs.next();
       ps.close();
       
   }catch(Exception e){}
       return status;
    }
    public static regB validateu(regB rb)
    {
        regB rb1=new regB();
        
        boolean status=false;
       try{
           Class.forName("com.mysql.jdbc.Driver");
       String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
       
        Connection dbCon = DriverManager.getConnection(dbURL, username, password);
        //Statement stmt = null;
        ResultSet rs = null;
       //String query ="select * from user1 where username=? and pwd=?";
       PreparedStatement ps=dbCon.prepareStatement("select * from user where uid=? and pwd=?");
       
       ps.setInt(1,rb.getUid());
       ps.setString(2,rb.getPwd());
       rs=ps.executeQuery();
       //status=rs.next();
       if(rs.next())
       {
           rb1.setUid(rs.getInt("uid"));
           rb1.setUname(rs.getString("uname"));
           rb1.setRole(rs.getInt("role"));
           
       }
       else
       {
           rb1=null;
       }
       ps.close();
       
   }catch(Exception e){}
       return rb1;
    }
    public static int reg(regB r)
    {
      int status = 0;
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs = null;
           
                PreparedStatement stmt=conn.prepareStatement("insert into user(pwd,uname,hq,Email,role) values (?,?,?,?,? )");
                stmt.setString(1,r.getPwd());
                stmt.setString(2, r.getUname());
                stmt.setString(3, r.getHq());
                stmt.setString(4, r.getEm());
                stmt.setInt(5, r.getRole());
                status=stmt.executeUpdate();
                stmt.close();
                PreparedStatement stmt1=conn.prepareStatement("select uid from user order by uid desc limit 1");
                rs =stmt1.executeQuery();
                if(rs.next())
                {
                    r.setUid(rs.getInt("uid"));
                }
                stmt1.close();
                return r.getUid();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return status;
    }
    public static int newq(quizB qb)
    {
      int status = 0;
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs = null;
             //LocalDate date = LocalDate.now();
                PreparedStatement stmt=conn.prepareStatement("insert into quiz(topic,tot_q,rem_q,q_mark,tot_tm,uid,dt) values (?,?,?,?,?,?,? )");
                stmt.setString(1,qb.getQtopic());
                stmt.setInt(2,qb.getTq());
               stmt.setInt(3,qb.getTq());
                stmt.setInt(4,qb.getQm());
                stmt.setInt(5,qb.getQtm());
                stmt.setInt(6,qb.getCrtby());
                stmt.setDate(7,java.sql.Date.valueOf(java.time.LocalDate.now()));
                status=stmt.executeUpdate();
                stmt.close();
                PreparedStatement stmt1=conn.prepareStatement("select qid from quiz order by qid desc limit 1");
                rs =stmt1.executeQuery();
                if(rs.next())
                {
                    qb.setQid(rs.getInt("qid"));
                }
                stmt1.close();
                return qb.getQid();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return status;
    }
    public static int canadd(quizB qb)
    {
      //int status = 0;
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs = null;
             //LocalDate date = LocalDate.now();
                PreparedStatement stmt1=conn.prepareStatement("select rem_q from quiz where qid=?");
                stmt1.setInt(1, qb.getQid());
                rs =stmt1.executeQuery();
                if(rs.next())
                {
                    int n=rs.getInt("rem_q");
                    
                    n=n-1;
                    qb.setTq(n);
                    PreparedStatement stmt2=conn.prepareStatement("update quiz set rem_q=? where qid=?");
                stmt2.setInt(1, qb.getTq());
                 stmt2.setInt(2, qb.getQid());
                    stmt2.executeUpdate();
                    stmt2.close();
                }
                stmt1.close();
                
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return qb.getTq();
    }
    public static qnsB newqns(qnsB qnb)
    {
      //int status = 0;
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs = null;
             ResultSet rs1 = null;
               ResultSet rs2 = null;
             //LocalDate date = LocalDate.now();
             int q=qnb.getQid();
                PreparedStatement stmt=conn.prepareStatement("insert into qns(qns_topic) values (? )");
                stmt.setString(1,qnb.getQns());
                stmt.executeUpdate();
                stmt.close();
                PreparedStatement stmt1=conn.prepareStatement("select qnsid from qns order by qnsid desc limit 1");
                rs =stmt1.executeQuery();
                if(rs.next())
                {
                    
                    qnb.setQnsid(rs.getInt("qnsid"));
                }
                PreparedStatement stmt2=conn.prepareStatement("insert into ans(answ,corrans) values (?,? )");
                stmt2.setString(1,qnb.getAnsw());
                stmt2.setString(2,qnb.getCorrans());
                stmt2.executeUpdate();
                stmt2.close();
                PreparedStatement stmt3=conn.prepareStatement("select ansid from ans order by ansid desc limit 1");
                rs1 =stmt3.executeQuery();
                if(rs1.next())
                {
                    
                    qnb.setAnsid(rs1.getInt("ansid"));
                    
                }
                stmt3.close();
                PreparedStatement stmt4=conn.prepareStatement("insert into qns_ans(qnsid,ansid) values(?,? )");
                stmt4.setInt(1, qnb.getQnsid());
                 stmt4.setInt(2, qnb.getAnsid());
                    stmt4.executeUpdate();
                    stmt4.close();
                  PreparedStatement stmt5=conn.prepareStatement("select qaid from qns_ans order by qaid desc limit 1");
                rs2 =stmt5.executeQuery();
                if(rs2.next())
                {
                    int qaid=rs2.getInt("qaid");
                    PreparedStatement stmt6=conn.prepareStatement("insert into q_qns(qid,qaid) values(?,? )");
                stmt6.setInt(1, qnb.getQid());
                 stmt6.setInt(2, qaid);
                    stmt6.executeUpdate();
                    stmt6.close();
                    
                }
                stmt5.close();
                
                        return qnb;  
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return qnb;
    }
    public static quizB showQ(int qid)
    {
      //int status = 0;
        quizB qb=new quizB();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs = null;
             //LocalDate date = LocalDate.now();
                
                PreparedStatement stmt1=conn.prepareStatement("select topic,tot_q,q_mark,tot_tm,dt from quiz where qid=?");
                stmt1.setInt(1,qid);
                rs =stmt1.executeQuery();
                if(rs.next())
                {
                 qb.setQtopic(rs.getString("topic"));
                 qb.setTq(rs.getInt("tot_q"));
                 qb.setQm(rs.getInt("q_mark"));
                 qb.setQtm(rs.getInt("tot_tm"));
                 qb.setDt(rs.getDate("dt"));
                }
                qb.setQid(qid);
                //stmt1.close();
        /*        PreparedStatement stmt2=conn.prepareStatement("select qaid from q_qns where qid=?");
                stmt2.setInt(1,qid);
                rs =stmt2.executeQuery();
                if(rs.next())
                {
                 int qaid=rs.getInt("qaid");
                 PreparedStatement stmt3=conn.prepareStatement("select qnsid,ansid from qns_ans where qaid=?");
                stmt3.setInt(1,qaid);
                rs =stmt3.executeQuery();
                    if(rs.next())
                    {
                        int qnsid=rs.getInt("qnsid");
                        qb.setQnsid(qnsid);
                        int ansid=rs.getInt("ansid");
                        qb.setAnsid(ansid);
                        PreparedStatement stmt4=conn.prepareStatement("select qns_topic from qns where qnsid=?");
                stmt4.setInt(1,qnsid);
                rs =stmt4.executeQuery();
               // stmt4.close();
                          if(rs.next())
                          {
                            qb.setQns(rs.getString("qns_topic"));
                          }
                          PreparedStatement stmt5=conn.prepareStatement("select answ,corrans from ans where ansid=?");
                stmt5.setInt(1,ansid);
                rs =stmt5.executeQuery();
                          if(rs.next())
                          {
                            qb.setAnsw(rs.getString("answ"));
                            qb.setCorrans(rs.getString("corrans"));
                          }
                 //         stmt5.close();
                    }
                   // stmt3.close();
                }*/
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return qb;
    }
public static ArrayList<qnsB> show2(int qid)
    {
      //int status = 0;
       
        ArrayList<qnsB> qnsball=new ArrayList<>();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs4=null;
             int qaid,m,tm;
             PreparedStatement stmt1=conn.prepareStatement("select q_mark,tot_tm from quiz where qid=?");
                stmt1.setInt(1,qid);
                rs4=stmt1.executeQuery();
                rs4.next();
                m=rs4.getInt("q_mark");
                tm=rs4.getInt("tot_tm");
             PreparedStatement stmt2=conn.prepareStatement("select qaid from q_qns where qid=?");
                stmt2.setInt(1,qid);
                rs=stmt2.executeQuery();
                
                while(rs.next())
                {
                     qnsB qb=new qnsB();
                qaid=rs.getInt("qaid");
                qb.setQid(qid);
                /*
                  PreparedStatement stmt1=conn.prepareStatement("select q_mark,tot_tm from quiz where qid=?");
                stmt1.setInt(1,qid);
                rs4=stmt1.executeQuery();
                rs4.next();*/
                 qb.setQmark(m);
                 qb.setTm(tm);
                 PreparedStatement stmt3=conn.prepareStatement("select qnsid,ansid from qns_ans where qaid=?");
                stmt3.setInt(1,qaid);
                rs1 =stmt3.executeQuery();
                rs1.next();
                       int qnsid=rs1.getInt("qnsid");
                       qb.setQnsid(rs1.getInt("qnsid"));
                        int ansid=rs1.getInt("ansid");
                        qb.setAnsid(rs1.getInt("ansid"));
                        PreparedStatement stmt4=conn.prepareStatement("select qns_topic from qns where qnsid=?");
                stmt4.setInt(1,qnsid);
                rs2=stmt4.executeQuery();
               // stmt4.close();
                          rs2.next();
                            qb.setQns(rs2.getString("qns_topic"));
                          
                          PreparedStatement stmt5=conn.prepareStatement("select answ,corrans from ans where ansid=?");
                stmt5.setInt(1,ansid);
                rs3 =stmt5.executeQuery();
           rs3.next();
                            qb.setAnsw(rs3.getString("answ"));
                            qb.setCorrans(rs3.getString("corrans"));
            
   qnsball.add(qb);
                   // stmt3.close();
                }  
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return qnsball;
    }
public static ArrayList<quizB> showq(int uid)
    {
      //int status = 0;
       
        ArrayList<quizB> quizall=new ArrayList<>();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs=null;
             //int qaid;
             PreparedStatement stmt=conn.prepareStatement("select * from quiz where uid=?");
                stmt.setInt(1,uid);
                rs=stmt.executeQuery();
                while(rs.next())
                {
                     quizB qb=new quizB();
                uid=rs.getInt("uid");
                    
                       qb.setQid(rs.getInt("qid"));
                       qb.setQtopic(rs.getString("topic"));
                       qb.setTq(rs.getInt("tot_q"));
                       qb.setQm(rs.getInt("q_mark"));
                       qb.setQtm(rs.getInt("tot_tm"));
                        
            
   quizall.add(qb);
                   // stmt3.close();
                }  
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return quizall;
    }
public static ArrayList<quizB> showall()
    {
      //int status = 0;
       
        ArrayList<quizB> quizall=new ArrayList<>();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs=null;
             //int qaid;
             PreparedStatement stmt=conn.prepareStatement("select * from quiz");
                //stmt.setInt(1,uid);
                rs=stmt.executeQuery();
                while(rs.next())
                {
                     quizB qb=new quizB();
                
                    
                       qb.setQid(rs.getInt("qid"));
                       qb.setQtopic(rs.getString("topic"));
                       qb.setTq(rs.getInt("tot_q"));
                       qb.setQm(rs.getInt("q_mark"));
                       qb.setQtm(rs.getInt("tot_tm"));
                        
            
   quizall.add(qb);
                   // stmt3.close();
                }  
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return quizall;
    }
public static qnsB calC(qnsB qb)
    {
        
      //int status = 0;
       
       // ArrayList<quizB> quizall=new ArrayList<>();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs=null;
             PreparedStatement stmt1=conn.prepareStatement("insert into marks(uid,qid,tot_mark,mark_obt) values(?,?,?,? )");
                stmt1.setInt(1, qb.getUid());
                stmt1.setInt(2, qb.getQid());
                stmt1.setInt(3, qb.getTot_m());
                stmt1.setInt(4, qb.getQmark());
                stmt1.executeUpdate();
                stmt1.close();
             //int qaid;
             
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
     return   qb;     
    }

    /**
     *
     * @param qid
     * @return
     */
    public static int editq(quizB q)
    {
        int status=0;
       try{
           Class.forName("com.mysql.jdbc.Driver");
       String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
       
        Connection conn = DriverManager.getConnection(dbURL, username, password);
        //Statement stmt = null;
        ResultSet rs = null;
      PreparedStatement stmt2=conn.prepareStatement("update quiz set topic=?,tot_q=?,rem_q=?,q_mark=?,tot_tm=? where qid=?");
                
       stmt2.setString(1,q.getQtopic());
       stmt2.setInt(2,q.getTq());
       stmt2.setInt(3,q.getNqns());
       stmt2.setInt(4,q.getQm());
       stmt2.setInt(5,q.getQtm());
       stmt2.setInt(6,q.getQid());
       //ps.setInt(1, qid);
       //ps.setString(2,rb.getPwd());
       
                    status=stmt2.executeUpdate();
                    stmt2.close();
      
       
   }catch(Exception e){}
       return status;//return status;
    }
    public static void editqns(qnsB q)
    {
        int status=0;
       try{
           Class.forName("com.mysql.jdbc.Driver");
       String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
       
        Connection conn = DriverManager.getConnection(dbURL, username, password);
        //Statement stmt = null;
        ResultSet rs = null;
      PreparedStatement stmt1=conn.prepareStatement("update qns set qns_topic=? where qnsid=?");
                
       stmt1.setString(1,q.getQns());
       stmt1.setInt(2,q.getQnsid());
         
                    stmt1.executeUpdate();
                    stmt1.close();
                    PreparedStatement stmt2=conn.prepareStatement("update ans set answ=?,corrans=? where ansid=?");
                
       stmt2.setString(1,q.getAnsw());
       stmt2.setString(2,q.getCorrans());
       stmt2.setInt(3, q.getAnsid());
       
       //ps.setInt(1, qid);
       //ps.setString(2,rb.getPwd());
       
                    stmt2.executeUpdate();
                    stmt2.close();
      
       
   }catch(Exception e){}
       //return status;
    }
    public static ArrayList<qnsB> showscore(int uid)
    {
      //int status = 0;
       
        ArrayList<qnsB> score=new ArrayList<>();
        //qqnsB qb=new qqnsB();
      try{
            String dbURL = "jdbc:mysql://localhost:3306/onlinequiz";
        String username ="root";
        String password = "";
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
             ResultSet rs=null;
             //int qaid;
             PreparedStatement stmt=conn.prepareStatement("select * from marks where uid=?");
                stmt.setInt(1,uid);
                rs=stmt.executeQuery();
                while(rs.next())
                {
                     qnsB qb=new qnsB();
                
                    
                       qb.setQid(rs.getInt("qid"));
                       qb.setUid(rs.getInt("uid"));
                     qb.setTot_m(rs.getInt("tot_mark"));
                       qb.setQmark(rs.getInt("mark_obt"));
                       
                        
            
   score.add(qb);
                   // stmt3.close();
                }  
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return score;
    }

}
