
/ 2

a:5
b:a-3
c:1+3*b

-1"a:",string a;
-1"b:",string b;
-1"c:",string c;
-1"";

/ 3

c:1+3*b:-3+a:5

-1"a:",string a;
-1"b:",string b;
-1"c:",string c;
-1"";

/ 4

y:((-3*c)+(a*a))%b
-1"y:",string y;
-1"y=b:",string (y=b);
-1"y~b:",string (y~b);

y:`long$y
-1"y~b:",string (y~b);

b*:5;
-1"b:",string b;
-1"";

/ 5

-1"type 123:",string type 123;
-1"type 123f:",string type 123f;
-1"type 2014.09m:",string type 2014.09m;
-1"type `me:",string type `me;
-1"type \"you\":",string type "you";
-1"";

/ 6

-1"type 4.29999871:", string type 4.29999871;
-1"type 7j:", string type 7j;
-1"type 4.2e:", string type 4.2e;
-1"type 0b:", string type 0b;
-1"type 9.8:", string type 9.8;
-1"";

/ 7

d:.z.D;
lastChristmas:2020.12.25;
daysSince:d-lastChristmas;

-1"today:      ",string d;
-1"last X-mas: ",string lastChristmas;
-1"days since: ",string daysSince;
-1"";

dayOfTheWeek:{
    days:`Sat`Sun`Mon`Tue`Wed`Thu`Fri;
    days(x mod 7)
    };

date:2011.01.10;
-1"today     :",string dayOfTheWeek .z.D;
-1(string date),":",(string(dayOfTheWeek date));
-1"";

/ 8

d1:"2014.01.01";
d1d:"D"$d1;
-1"d1:",string d1d;

d2:`2013.12.10;
d2d:"D"$string d2;
-1"d2:",string d2d;

n1:3.14;
n1i:`int$n1;
-1"n1:",string n1i;

n2:"2";
n2i:"I"$n2;
-1"n2:",string n2i;

a1:"abcde";
a1s:`$a1;
-1"a1:", string a1s;

a2:"abcde";
codes:"i"$a2;
show codes;
show type codes;
-1"a2:",raze string each codes;

/ 9

\v

/ end

exit 0