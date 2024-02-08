/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.onlinequiz.model;

import java.sql.Date;

/**
 *
 * @author User
 */
public class quizB {
 
    private int nqns;
    private int qid;
    private String qtopic;
    private int qtm;
    private int qm;
    private int tq;
    private int crtby;
private Date dt;

    public int getNqns() {
        return nqns;
    }


    public void setDt(Date dt) {
        this.dt = dt;
    }

    public Date getDt() {
        return dt;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getCrtby() {
        return crtby;
    }

    public void setCrtby(int crtby) {
        this.crtby = crtby;
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

    public void setNqns(int nqns) {
        this.nqns = nqns;
    }
    
    
}
