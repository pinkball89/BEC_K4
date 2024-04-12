/**  Input Format

The first line contains a single integer, , denoting the length of array .
The second line contains  space-separated integers describing each respective element, , in array .

Constraints

Output Format

Print the number of subarrays of  having negative sums.

Sample Input

5
1 -2 4 -5 1
Sample Output

9
Explanation

There are nine negative subarrays of :
[0:1] 1 - 2 = -1
[0:3] 1 -2 + 4 -5 = -2
[0:4] 1 -2 + 4 -5 + 1 = -2
[1:1] -2
[1:3] -2 + 4 -5 = -3
[1:4] -2 + 4 -5 + 1 = -2
[2:3] 4 -5 = -1
[3:3] -5
[3:4] -5 + 1 = -4 

Thus, we print 9 on a new line.
 **/

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int a[] = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = input.nextInt();
        }
        int count = 0;
        for (int i = 0; i < n; i++) {
            int sum = a[i];
            if (sum < 0)
                count++;
            for (int j = i + 1; j < n && i + 1 < n; j++) {
                sum += a[j];
                if (sum < 0) {
                    count++;
                }
            }
        }
        System.out.println(count);
        input.close();
    }
}