/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.ArrayList;

/**
 *
 * @author user2
 */
public class User extends human{
    public void setCard(ArrayList<Integer> setCard){
             myCards = setCard;
 }
    
    public boolean checkSum(){
         if(open()>16){
            return true;
        }else{
            return false;
        }
     }


    public int open(){
    int open = 0;
        for(int j=0;j<myCards.size();j++){
            open = open + myCards.get(j);
        }
        return open;
    }
    
}
