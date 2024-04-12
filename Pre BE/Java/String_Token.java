/**  Given a string, s, matching the regular expression [A-Za-z !,?._'@]+, split the string into tokens. We define a token to be one or more consecutive English alphabetic letters. Then, print the number of tokens, followed by each token on a new line.

Note: You may find the String.split method helpful in completing this challenge.

Input Format

A single string, s.

Constraints

1 ≤ length of s ≤ 4 . 105

s is composed of any of the following: English alphabetic letters, blank spaces, exclamation points (!), commas (,), question marks (?), periods (.), underscores (_), apostrophes ('), and at symbols (@).
Output Format

On the first line, print an integer, n, denoting the number of tokens in string s (they do not need to be unique). Next, print each of the n tokens on a new line in the same order as they appear in input string s.

Sample Input

He is a very very good boy, isn't he?
Sample Output

10
He
is
a
very
very
good
boy
isn
t
he
 **/

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine();
        // Write your code here.
        
        boolean found = false;
        for (int i = 0; i < s.length(); i++) {
            int t = s.charAt(i);
            if (65 <= t && t <= 90 || t >= 97 && t <= 112) {
                found = true;
                break;
            }
        }
        if (found) {
            String[] str = s.split("[, '@_.?!]+");
            int length = str.length;
            if (str[0].length() == 0 || str[str.length - 1].length() == 0) {
                length--;
            }
            System.out.println(length);
            for (String s1 : str)
                if (s1.length() != 0)
                    System.out.println(s1);
        }else {
            System.out.println(0);
        }
        scan.close();
        
        
    }
}


