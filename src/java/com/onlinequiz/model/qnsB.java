/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.onlinequiz.model;

/**
 *
 * @author User
 */
public class qnsB {
    private int qid;
   private int qnsid;
   private String qns;
   private int ansid;
   //private int ansop;
   private String answ;
   private String corrans;
   private int qmark;
   private int tm;
   private int tot_m;
private int uid;
private String uname;

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUname() {
        return uname;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUid() {
        return uid;
    }

    public void setTot_m(int tot_m) {
        this.tot_m = tot_m;
    }

    public int getTot_m() {
        return tot_m;
    }
   

    public void setQmark(int qmark) {
        this.qmark = qmark;
    }

    public void setTm(int tm) {
        this.tm = tm;
    }

    public int getQmark() {
        return qmark;
    }

    public int getTm() {
        return tm;
    }
   

    public void setAnsid(int ansid) {
        this.ansid = ansid;
    }

    public void setAnsw(String answ) {
        this.answ = answ;
    }

   

    public int getAnsid() {
        return ansid;
    }

    public String getAnsw() {
        return answ;
    }

    public String getCorrans() {
        return corrans;
    }

    public void setCorrans(String corrans) {
        this.corrans = corrans;
    }

    

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getQid() {
        return qid;
    }

    public int getQnsid() {
        return qnsid;
    }

    public String getQns() {
        return qns;
    }

    public void setQnsid(int qnsid) {
        this.qnsid = qnsid;
    }

    public void setQns(String qns) {
        this.qns = qns;
    }
   
   
}
