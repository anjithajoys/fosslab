#!/bin/bash
pdftotext result_s1.pdf
pdftotext result_s1.pdf -layout
pdftotext result_s2.pdf
pdftotext result_s2.pdf -layout
grep -A 1 "MDL16CS" result_s1.txt > s1.txt
grep -A 1 "MDL16CS" result_s2.txt > s2.txt
sed -i 's/MA101(\|PH100(\|BE110(\|BE10105(\|BE103(\|EE100(\|PH110(\|EE110(\|CS110(\|,\|--\| //g' s1.txt
sed -i 's/CY100(\|BE100(\|EC100(\|CY110(\|EC110(\|MA102(\|BE102(\|CS100(\|CS120(\|,\|--\| //g' s2.txt
tr -d '\040\011\012\015\014'<s1.txt> cs_s1.txt
tr -d '\040\011\012\015\014'<s2.txt> cs_s2.txt
sed -i 's/MDL/\nMDL/g' cs_s1.txt
sed -i 's/MDL/\nMDL/g' cs_s2.txt
sed -i 's/O)/ 10 /g;s/A+)/ 9 /g;s/A)/ 8.5 /g;s/B+)/ 8 /g;s/B)/ 7 /g;s/C)/ 6 /g;s/P)/ 5 /g;s/F)/ 0 /g' cs_s1.txt
sed -i 's/O)/ 10 /g;s/A+)/ 9 /g;s/A)/ 8.5 /g;s/B+)/ 8 /g;s/B)/ 7 /g;s/C)/ 6 /g;s/P)/ 5 /g;s/F)/ 0 /g' cs_s2.txt
awk '{printf($1" "($2*4+$3*4+$4*3+$5*3+$6*3+$7*3+$8*1+$9*1+$10*1)/23)}' cs_s1.txt > temp1.txt
sed -i 's/MDL/\nMDL/g' temp1.txt
awk '{printf($1" "($2*4+$3*4+$4*3+$5*1+$6*1+$7*4+$8*3+$9*3+$10*1)/24)}' cs_s2.txt > temp2.txt
sed -i 's/MDL/\nMDL/g' temp2.txt
join temp1.txt temp2.txt > temp.txt
awk '{printf($1" :"($2 * 23 + $3 * 24)/47)}' temp.txt >cs_s1s2.txt
sed -i 's/MDL/\nMDL/g' cs_s1s2.txt
grep 'MDL16CS' cs_doc.txt > cs_file.txt
cut -f4,5 cs_file.txt > cs_text.txt
join cs_text.txt cs_s1s2.txt > cs_result.txt
column -t -s $':' cs_result.txt > csb_result.txt


