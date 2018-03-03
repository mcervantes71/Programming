package _04_Strings;

public class _02_Understanding_Immutability
{
    public static void main(String[] args)
    {
        String hello = "hello";
        String hi = hello + "world";    		// hi = "helloworld"
        hi = hello;                     		// hi = "hello"

        System.out.println(hi + hello); 		// hellohello

        hello = hello.toUpperCase();

        System.out.println(hello);			// HELLO

        // CONCAT
        String s1 = "1";
        String s2 = s1.concat("2");     		// 12
        s2.concat("3");

        System.out.println(s1);         		// 1
        System.out.println(s2);         		// 12
    }
}