/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package errores_condicionales;

/**
 *
 * @author Ing_Rey
 */
import java.util.Scanner;
public class Errores_Condicionales {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
     //   Scanner sc= new Scanner(System.in);
//         try{
//
//                    System.out.println("SUMAS");
//                    int num1,num2,suma;
//                    System.out.println("Ingrese Primer #");
//                    num1=sc.nextInt();
//                    System.out.println("Ingrese Segundo #");
//                    num2=sc.nextInt();
//                    suma=num1+num2;
//                    System.out.println("la suma es :"+suma);
//            }
//            catch(Exception e)
//            {
//                System.out.println("Solo valores Enteros");          
//            
//            }
//            finally
//            {
//                System.out.println("Exitos....");   
//            }
//         
//         System.out.println("Ingrese Edad ");
//         int edad;
//         edad=sc.nextInt();
//      System.out.println("Condicionales Simples ");
//      if(edad>=18)
//      {
//          System.out.println("Es Mayor de edad puede Ingresar a la Disco ");
//      
//      }
//      
//      if(edad<18)
//      {
//          System.out.println("No Es Mayor de edad; No puede Ingresar a la Disco ");
//      
//      }
//            try     
//           { 
//                Scanner sc = new Scanner(System.in);
//                int dia;
//                System.out.println("Ingrese dia");
//                dia=sc.nextInt();
//               switch(dia)
//               { case 1:
//                    System.out.println("Domingo");
//
//                    break;
//                 case 2:   
//                    System.out.println("Lunes");
//                    break;
//                 case 3:
//                    System.out.println("Martes");
//                    break;
//                 default:
//                     System.out.println("dia no valido");
//               }
//            }
//            catch(Exception e)
//            {
//                System.out.println("Solo valores Enteros");          
//            
//            }



//-------------------
 //     int opc=0;
//        int op=0;
//        Scanner sc = new Scanner(System.in);
//        
//        while(opc!=3)
//        {
//                  System.out.println("----Seleccione opcion-----");
//                  System.out.println("1. Sumar");
//                  System.out.println("2. Restar");
//                  System.out.println("3. Salir");
//                  op=sc.nextInt();
//                  switch(op)
//                   {
//                       case 1:
//                           System.out.println("Sumamos");
//                           break;
//                       case 2:
//                           System.out.println("Restamos");
//                           break;
//                       case 3:
//                           System.out.println("Chao");
//                           opc=3;
//                           break;
//                  } 
//          
//        }

//-------------------

        int contador=1;
        Scanner sc = new Scanner(System.in);
        System.out.println("Cantidad de Iteraciones");
        int iteraciones=sc.nextInt();
        while(contador<=iteraciones)
        {
               System.out.println("# "+contador); 
               contador+=1;
          
        }
        
    }
    
}
