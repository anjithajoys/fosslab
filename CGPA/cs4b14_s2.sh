#!/bin/bash
$(pdftotext result_s2.pdf) #to convert the pdf to txt file
$(pdftotext result_s2.pdf -layout)
$(grep -A 1 "MDL16CS" result_s2.txt > s2.txt) #to get the result of cs only from result_s2.txt to s2.txt
$(sed -i 's/CY100(//g' s2.txt)  #to remove cy100 from s1.txt
$(sed -i 's/BE100(//g' s2.txt)
$(sed -i 's/EC100(//g' s2.txt)
$(sed -i 's/CY110(//g' s2.txt)
$(sed -i 's/EC110(//g' s2.txt)
$(sed -i 's/MA102(//g' s2.txt)
$(sed -i 's/BE102(//g' s2.txt)
$(sed -i 's/CS100(//g' s2.txt)
$(sed -i 's/CS120(//g' s2.txt)
$(sed -i 's/,//g' s2.txt)
$(sed -i 's/--//g' s2.txt)
$(sed -i 's/ //g' s2.txt) 
$(tr -d '\040\011\012\015\014'<s2.txt> cs_s2.txt) #creates txtfile cs_s2.txt with no spaces thus the content appears continuously
$(sed -i 's/MDL/\nMDL/g' cs_s2.txt) #to make the MDL start words occur in next line
$(sed -i 's/O)/ 10 /g' cs_s2.txt)
$(sed -i 's/A+)/ 9 /g' cs_s2.txt)
$(sed -i 's/A)/ 8.5 /g' cs_s2.txt)
$(sed -i 's/B+)/ 8 /g' cs_s2.txt)
$(sed -i 's/B)/ 7 /g' cs_s2.txt)
$(sed -i 's/C)/ 6 /g' cs_s2.txt)
$(sed -i 's/P)/ 5 /g' cs_s2.txt)
$(sed -i 's/F)/ 0 /g' cs_s2.txt)
$(awk '{printf($1" "($2*4+$3*4+$4*3+$5*1+$6*1+$7*4+$8*3+$9*3+$10*1)/24)}' cs_s2.txt > temp2.txt) #mulipcredits:create temp1-with no space &'0' infront
$(sed -i 's/MDL/\nMDL/g' temp2.txt) #to make the MDL start words occur in the next line

