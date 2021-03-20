\l test.q
"Hello, World!"
\l person_db.q
show person
save `person
save `person.csv
save `person.xls
save `person.xml
url:"https://code.kx.com/download/data/example.csv"
count t:("SFI";enlist csv)0: system "curl -Ls ",url
`:example.csv set t
show select from t where qty>98
\a
exit 0