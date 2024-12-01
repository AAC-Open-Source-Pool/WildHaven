import java.util.Scanner;
class hello
{
    public static void main(String[]args)
    {
        Scanner in=new Scanner(System.in);
        int x=in.nextInt();
        int y=in.nextInt();
        int sum=x+y;
        System.out.println("the sum of entered numbers is ="+sum);
    }
}