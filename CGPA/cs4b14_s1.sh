#!/bin/bash
$(pdftotext result_s1.pdf) #to convert the pdf to txt file
$(pdftotext result_s1.pdf -layout)
$(grep -A 1 "MDL16CS" result_s1.txt > s1.txt) #to get the result of cs only from result_s1.txt to s1.txt
$(sed -i 's/MA101(//g' s1.txt) #to remove MA101 from s1.txt
$(sed -i 's/PH100(//g' s1.txt) 
$(sed -i 's/BE110(//g' s1.txt)
$(sed -i 's/BE10105(//g' s1.txt)
$(sed -i 's/BE103(//g' s1.txt)
$(sed -i 's/EE100(//g' s1.txt)
$(sed -i 's/PH110(//g' s1.txt)
$(sed -i 's/EE110(//g' s1.txt)
$(sed -i 's/CS110(//g' s1.txt)
$(sed -i 's/,//g' s1.txt)
$(sed -i 's/--//g' s1.txt)
$(sed -i 's/ //g' s1.txt) 
$(tr -d '\040\011\012\015\014'<s1.txt> cs_s1.txt) #creates txtfile cs_s1.txt with no spaces thus the content appears continuously
$(sed -i 's/MDL/\nMDL/g' cs_s1.txt) #to make the MDL start words occur in next line
$(sed -i 's/O)/ 10 /g' cs_s1.txt) #to replace O-grade with grade point-10
$(sed -i 's/A+)/ 9 /g' cs_s1.txt)
$(sed -i 's/A)/ 8.5 /g' cs_s1.txt)
$(sed -i 's/B+)/ 8 /g' cs_s1.txt)
$(sed -i 's/B)/ 7 /g' cs_s1.txt)
$(sed -i 's/C)/ 6 /g' cs_s1.txt)
$(sed -i 's/P)/ 5 /g' cs_s1.txt)
$(sed -i 's/F)/ 0  /g' cs_s1.txt)
$(awk '{printf($1" "($2*4+$3*4+$4*3+$5*3+$6*3+$7*3+$8*1+$9*1+$10*1)/23)}' cs_s1.txt > temp1.txt) #mulipcredits:create temp1-with no space &'0' infront
$(sed -i 's/MDL/\nMDL/g' temp1.txt) #to make the MDL start words occur in the next line




