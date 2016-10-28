/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challlenhe4;

/**
 *
 * @author user2
 */
public class person1 {
     
    public static String name = namae();
    public static int age = toshi();
    public static String printData = Data(name, age);
    
    public static String namae(){
     return "店長";
    }
    
    public static int toshi(){
    return 500;
    }
    
    public static String Data(String name,int age){
    return name + age;
    }
   
    public static void aaaa(){
        System.out.println(printData);
    }
   
}
