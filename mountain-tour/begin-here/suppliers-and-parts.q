\l ../../KxSystems/kdb/sp.q;

select from sp where qty>200;
update qty:qty*2 from sp where p=`p2;

sp 0 2