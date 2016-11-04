/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

/**
 *
 * @author user2
 */
import java.util.*;
//human抽象クラス
 public abstract class human {
    
     public abstract int open();
    
     public abstract void setCard(ArrayList<Integer>setCard);
    
     public abstract boolean checkSum();
    
     public ArrayList<Integer> myCards = new ArrayList<Integer>(); //mycard
}
