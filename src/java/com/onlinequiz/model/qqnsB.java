/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.onlinequiz.model;

import java.sql.Array;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class qqnsB {
   private int qid;
   private List<Integer> qids=new ArrayList<Integer>();  
   private int qnsids[]=new int[10];
  // private Array qnsids;
    private String qtopic;
    private int qtm;
    private int qm;
    private int tq;
    //private int crtby;
    private int qnsid;
   private String qns;
   private int ansid;
   //private int ansop;
   private String answ;
   private String corrans;
   private Date dt;
/*
    public List<Integer> getQids() {
        return qids;
    }

    public void setQids(List<Integer> qids) {
        this.qids = qids;
    }*/

    public int[] getQnsids() {
        return qnsids;
    }

    public void setQnsids(int[] qnsids) {
        this.qnsids = qnsids;
    }
/*
    public Array getQnsids() {
        return qnsids;
    }

    public void setQnsids(Array qnsids) {
        this.qnsids = qnsids;
    }
  */ 
   
    public void setDt(Date dt) {
        this.dt = dt;
    }

    public Date getDt() {
        return dt;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public void setQtopic(String qtopic) {
        this.qtopic = qtopic;
    }

    public void setQtm(int qtm) {
        this.qtm = qtm;
    }

    public void setQm(int qm) {
        this.qm = qm;
    }

    public void setTq(int tq) {
        this.tq = tq;
    }

    public void setQnsid(int qnsid) {
        this.qnsid = qnsid;
    }

    public void setQns(String qns) {
        this.qns = qns;
    }

    public void setAnsid(int ansid) {
        this.ansid = ansid;
    }

    public void setAnsw(String answ) {
        this.answ = answ;
    }

    public void setCorrans(String corrans) {
        this.corrans = corrans;
    }

    public int getQid() {
        return qid;
    }

    public String getQtopic() {
        return qtopic;
    }

    public int getQtm() {
        return qtm;
    }

    public int getQm() {
        return qm;
    }

    public int getTq() {
        return tq;
    }

    public int getQnsid() {
        return qnsid;
    }

    public String getQns() {
        return qns;
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
   
}
