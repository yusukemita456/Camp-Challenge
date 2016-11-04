                                                                                                                                                                                       /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.*;
        
/**
 *
 * @author user2
 */
  public class Dealer extends human{
    
        
        
    public static ArrayList<Integer> cards = new ArrayList<Integer>();
        public Dealer(){
            
            for(int i = 0;i < 4;i++){
                for(int x = 1;x < 11;x++){
                    cards.add(x);
                    x++;
                }
                i++;
            }
            
            for(int u = 0;u < 4;u++){
                for(int y = 0;y < 4;y++){
                    cards.add(10);
                    y++;
                }
                u++;
            }
            
        }
        
    
           
    public ArrayList deal(){
     ArrayList<Integer> dealCards = new ArrayList<Integer>();
     
     Random rnd1 = new Random(); 
     
     for(int num = 0;num < 2;num++){
         int ran1 = rnd1.nextInt(this.cards.size());
         dealCards.add(this.cards.get(ran1));
         this.cards.remove(ran1);
     }
         return dealCards;
     } 
    
    
    
    public ArrayList hit(){
      ArrayList<Integer> hitCard = new ArrayList<Integer>();  
        Random rnd2 = new Random(); 
     
     for(int num = 0;num < 1;num++){
         int ran2 = rnd2.nextInt(this.cards.size());
         hitCard.add(this.cards.get(ran2));
         this.cards.remove(ran2);
     }
         return hitCard;
     } 
    
  
    
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
    
    
    
     
     
     
   
     
  
    

