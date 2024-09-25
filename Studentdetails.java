import java.util.Scanner;

  class Studentdetails
  {
       String name;
     String dept;
     int id;
      
    public void display()
     {
          Scanner in = new Scanner(System.in);
            System.out.println("enter name: ");
            name = in.next();
            System.out.println("enter department: ");
            dept = in.next();
            System.out.println("enter id: ");
            id=in.nextInt();
        System.out.println("name: "+name);
        System.out.println("department: "+dept);
        System.out.println("id: "+id);
     }
  }

    public class Main
    {
        public static void main(String args[])
        {
     Student s = new Student();
            s.display();
        }
    }