
nyse:([]
 symbol:`symbol$();
 date  :`date$();
 open  :`float$();
 high  :`float$();
 low   :`float$();
 close :`float$();
 volume:`int$()
 )

nyse,:`symbol`date`open`high`low`close`volume!(`AA; 1999.01.01; 55.92; 55.92; 55.92; 55.92; 0)

path:`:./data/nyse.csv
nyse:("SDFFFFI";enlist",") 0: path
show meta nyse

/exit 0
