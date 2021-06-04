
/ 1

a:1 2 3;
b:4 5;
c:a,b;
s:sum c;
c10:10*c;
-1"sum c:",string s;
-1"c10:",raze string each c10;


/ 2

d:()
show d

/ 3

d:`int$()
show d

/ 4

d,:5?10;
show d;

/ 5

e:enlist 1;
show e;

/ 6
system "S 314159i";
three_til_30:3+til 28;
show three_til_30;
list1:20?three_til_30;
show list1;

-1"max:",string max list1;
-1"min:",string min list1;
-1"avg:",string avg list1;

-1"at index 10: ",string list1 10;
-1"20th: ",string list1 19;

following:3 5 7 11 13 17
-1"in:",raze string each following in list1;
-1"any in:",string any following in list1;

list1*:3;
show list1;
list1+:til count list1;
show list1;

evens:list1 where not list1 mod 2;
show evens;
show count evens;

firstTen:10#list1;
show firstTen;
dates:`date$firstTen;
show dates;

/ 7

m:(1 2 3;4 5 6;7 8 9);
show "m";
show m;
a:m[;1];
show "a";
show a;
m[1]:a;
show "m";
show m;
mm:flip m;
show "mm";
show mm;
mm,:3#10;
show "mm";
show mm;
mm,:11+til 3
show "mm";
show mm;
-1"";

/ 8

m1:1 2 3;
m2:`a`b`c;
m3:(10f;11f;12f;14f);
m4:100011b;
m:(m1;m2;m3;m4)
show "m"
show m;

ts:type each m;
show ts;
razed:raze m;
show razed;

/ 9
show count ("H";"e";"l";"l";"o");
show count (`Hello)
show count ("Hello");

/ 10
s1:"Hello"
s2:"World"
s:s1," ",s2;
show s;

indexOfW:s?"W";
show indexOfW,s[indexOfW];
indexOfLastL:(count s)-reverse s?"l";
show indexOfLastL,s[indexOfLastL];
indexOfLastL2:last where s="l";
show indexOfLastL2,s[indexOfLastL2];

withoutHello:(1+count s1)_s;
show withoutHello;
withWarCraft:withoutHello," of Warcraft";
show withWarCraft;

oneOperation:(1+count s1)_s," of Warcraft"
show oneOperation;

/ 11

games:`CrashBandicoot`StreetsOfRage`EchoTheDolphin`CrashBandicoot2`SonicAndKnuckles`MicroMachines`PokemonRed`SuperMarioBrothers`MegaBomberman`Zelda
platform:`PS1`Sega`Sega`PS1`Sega`PS1`Gameboy`Gameboy`Sega`Gameboy
levels:(7 9 6 8 4 1;2 1 3 5;8 5 7 5 4 4;10 2 1;4 2 1 10;8 4 9 5 8 10;0 3 2 10 8 5 6 10;6 0;8 4 8 9 5 1 7;0 10 9 5 2)
show count games
show count platform
show count levels
show distinct platform
show count distinct platform

numberOfUsers:count each levels;
show numberOfUsers
avgUserLevel:avg each levels;
show avgUserLevel
avgUserLevelAbove6:avgUserLevel > 6
show avgUserLevelAbove6
show games where avgUserLevelAbove6

usersPerGame:count each levels
show "PS1:",string sum usersPerGame where platform = `PS1
show "Sega:",string sum usersPerGame where platform = `Sega
show "Gameboy:",string sum usersPerGame where platform = `Gameboy

/ end

exit 0;