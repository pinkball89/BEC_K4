/**  Task
 Given an integer, , perform the following conditional actions:

 If  is odd, print Weird
 If  is even and in the inclusive range of  to , print Not Weird
 If  is even and in the inclusive range of  to , print Weird
 If  is even and greater than , print Not Weird
 Complete the stub code provided in your editor to print whether or not  is weird.

 Input Format

 A single line containing a positive integer n.

 Constraints 1 <= n <= 100

 Output Format

 Print Weird if the number is weird; otherwise, print Not Weird.

 Sample Input 0

 3
 Sample Output 0

 Weird
 **/

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;



public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(bufferedReader.readLine().trim());
        if (N %2 != 0) System.out.println("Weird");
        else {
            if (N > 20) System.out.println("Not Weird");
            else {
                if (N >= 2 && N <= 5) System.out.println("Not Weird");
                else System.out.println("Weird");
            }
        }

        bufferedReader.close();

    }
}


