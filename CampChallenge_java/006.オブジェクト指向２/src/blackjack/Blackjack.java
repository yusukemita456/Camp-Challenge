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
public class Blackjack {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
//        プレイ開始　　　　　
        Dealer dealer = new Dealer();
        User user = new User();
            System.out.println("ゲームを開始します"+"<br>");
//        ディーラーが52枚のカードから２枚のカードをディーラーとユーザーに配る。  
        dealer.setCard(dealer.deal()); 
        user.setCard(dealer.deal()); 

        System.out.println("ディーラーの手札は"+dealer.myCards+"です。"+"<br>"); 
        System.out.println("ユーザーの手札は"+user.myCards+"です。"+"<br>"); 
        
        
        if (dealer.checkSum()){
            dealer.setCard(dealer.hit());
            System.out.println("ディーラーの手札の合計が17未満なのでヒットしました。");
            
        }else{
             System.out.println("ディーラーの手札の合計が17以上なのでヒットしませんでした。");
        }
        
        if (user.checkSum()){
            user.setCard(dealer.hit());
             System.out.println("ユーザーの手札の合計が17未満なのでヒットしました。"+"<br>");
        }else{
             System.out.println("ユーザーの手札の合計が17以上なのでヒットしませんでした。"+"<br>");
        }
        
        System.out.println("ディーラーの手札は"+dealer.myCards+"です。"+"<br>"); 
        System.out.println("ユーザーの手札は"+user.myCards+"です。"+"<br>"); 

        if(dealer.open()==user.open()){
            System.out.println("ユーザーの得点は"+user.open()+"ディーラーの得点は"+dealer.open()+"引き分けです");
        }else if(dealer.open()>21&&user.open()>21){
                    System.out.println("ユーザーの得点は"+user.open()+"ディーラーの得点は"+dealer.open()+"引き分けです");  
        }else if(dealer.open()>21){
                    System.out.println("ユーザーの得点は"+user.open()+"ディーラーの得点は"+dealer.open()+"ユーザーの勝ちです");  
        }else if(user.open()>21){
                    System.out.println("ユーザーの得点は"+user.open()+"ディーラーの得点は"+dealer.open()+"ディーラーの勝ちです");  
        }
}
        
   }     
        
    
    

