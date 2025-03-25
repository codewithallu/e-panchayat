/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.util.Date;

/**
 *
 * @author SNEHA
 */
public class DateDemo {
    public static void main(String[] args)
    {
        String s="10/04/2015";
        Date d=new Date(s);
        System.out.println(d.toString());
        Date d1=new Date();
        if(d1.before(d))
        {
            System.out.println("Invalid Date");
        }
        else
        {
            System.out.println("Proceed");
        }
    }
    
}
