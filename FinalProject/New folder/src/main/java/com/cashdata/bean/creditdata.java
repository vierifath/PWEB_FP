/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JSP.bean;



/**
 *
 * @author VIERI FATH
 */
 public class creditdata {
 private int id;
 private String Dates;
 private String Information;
 private int Amount;
 
  public int getId() {
  return id;
 }
 public void setId(int id) {
  this.id = id;
 }
 public String getDates() {
  return Dates;
 }
 public void setDates(String dates) {
  this.Dates = dates;
 }
 public String getInformation() {
  return Information;
 }
 public void setInformation(String information) {
  this.Information = information;
 }
 
 public int getAmount() {
 return Amount;
 }
 public void setAmount(int amount) {
  this.Amount = amount;
 }

   
              
 }