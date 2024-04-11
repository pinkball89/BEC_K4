/**  We use the integers a, b, and n to create the following series:

 (a+2^0. b), (a+2^0.b+2^1.b), (a+2^0.b+2^1.b+…….+2^(n-1).b)

 You are given  queries in the form of a, b, and n. For each query, print the series corresponding to the given a, b, and n values as a single line of n space-separated integers.

 Input Format

 The first line contains an integer, q, denoting the number of queries.
 Each line i of the q subsequent lines contains three space-separated integers describing the respective ai, bi, and ni values for that query.

 Constraints

 0<=q<=500
 0<=a,b<=50
 1<=n<=15
 Output Format

 For each query, print the corresponding series on a new line. Each series must be printed in order as a single line of n space-separated integers.

 Sample Input

 2
 0 2 10
 5 3 5
 Sample Output

 2 6 14 30 62 126 254 510 1022 2046
 8 14 26 50 98
 **/

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner input = new Scanner(System.in);

        if(input.hasNextInt()) {

            // Read the number of queries
            int q = input.nextInt();

            // Process each query
            for (int i = 0; i < q; i++) {
                int a = input.nextInt();
                int b = input.nextInt();
                int n = input.nextInt();
                // Print the series for the current query
                printSeries(a, b, n);
                System.out.println();
            }

            input.close();
        }

    }

    // Function to print the series for a given query
    private static void printSeries(int a, int b, int n) {
        int sum = a;
        for (int i = 0; i < n; i++) {
            sum += Math.pow(2, i) * b;
            System.out.print(sum + " ");
        }

    }
}
