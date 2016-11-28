/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.Serializable;
import java.util.jar.Attributes;
import jdk.nashorn.internal.codegen.CompilerConstants;

/**
 *
 * @author user2
 */

//課題３　javabeansを追加しました。
public class UserDataBeans implements Serializable{
    
   private String name = "";
   private String year = "";
   private String month = "";
   private String day = "";
   private String type = "";
   private String tell = "";
   private String comment = "";
  
   
  public UserDataBeans() {}
  public UserDataBeans(String name,String year,String month,String dayString,String type,String tell,String comment) {

    this.name = name;
    this.year = year;
    this.month =month;
    this.day =day;
    this.type =type;
    this.tell =tell;
    this.comment =comment;
   
}

    public String getName() {
        return name;
    }

    

    public String getYear() {
        return year;
    }

    

    public String getMonth() {
        return month;
    }

   
    public String getDay() {
        return day;
    }

    
    public String getType() {
        return type;
    }

    
    public String getTell() {
        return tell;
    }

    

    public String getComment() {
        return comment;
    }


   
}
