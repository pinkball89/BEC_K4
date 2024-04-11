/**  You are given an integer n, you have to convert it into a string.

Please complete the partially completed code in the editor. If your code successfully converts n into a string s the code will print "Good job". Otherwise it will print "Wrong answer".

n can range between -100 to 100 inclusive.

Sample Input 0

100
Sample Output 0

Good job
 **/

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        String s = String.valueOf(n);
        if (s != null) System.out.println("Good job");
        else System.out.println("Wrong answer");
        
        input.close();
    }
}