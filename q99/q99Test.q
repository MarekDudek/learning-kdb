system "d .q99Test";

testQ1:{.qunit.assertEquals[last `a`b`c`d; `d; "Find the last box of a list"]};

testQ2:{.qunit.assertEquals[-2#`a`b`c`d; `c`d; "Find the last but one box of a list"]};

elementAt:{[l;i] :l[i-1]}
testQ3:{.qunit.assertEquals[elementAt[`a`b`c`d`e;3]; `c; "Find the K'th element of a list"]};

testQ4:{.qunit.assertEquals[count `a`b`c`d`e; 5; "Find the number of elements of a list"]};

testQ5:{.qunit.assertEquals[reverse `a`b`c`d`e; `e`d`c`b`a; "Reverse a list"]};

isPalindrome:{[l] :l~ reverse l}
testQ6:{.qunit.assertEquals[isPalindrome "xamax"; 1b; "Find out whether a list is a palindrome"]};

flatten:{[l]
    $[(count l)~count raze l;:l;:flatten raze l]
    };
testQ7:{.qunit.assertEquals[flatten ((1;2;3);(1;(2;(3;4)));(1;2)); 1 2 3 1 2 3 4 1 2; "Flatten"]};