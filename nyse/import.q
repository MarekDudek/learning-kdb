
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
show select from nyse

path:`:./nyse/NYSE_19990101.csv
data:("SDFFFFI";enlist",") 0: path
show meta data

/exit 0
