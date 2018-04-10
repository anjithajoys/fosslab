#linux commands
cd :to enter into the current dir
cd.. :to go back tothe previous dir 
mkdir :to make a new dir
ls :to display the contents in the dir
rmdir :to remove a dir
ls -a :to display the hidden contents in the dir
ls -r :to display the contents in the dir in reverse order of ls
ls -l :to display the contents in the dir in alpha order
ls -lt :to display the contents in the dir in the order of execution (ie, last created files will be shown first)
ls -ltr :to display the contents in the dir in the order of creation (ie, first created files will shown first)
alias newname='oldname' :to add shoertcuts (eg, alias ls-ltr='ltr' ie,ltr can now be used instead of ls-ltr)
alias :showes all the alias commands 
unalias newname :removes the shortcut (eg, unalias ltr ie, now ltr cannot be used insted of ls -ltr)
hostname -I :to get the IP address
ls > textname.txt :copies all files in ls (eg, ls > temp1.txt ie, copies all files in ls into temp1)
cat > textname.txt :allows us to type the content of the text (eg, cat > temp2.txt ie,whatever we type wil be copied to temp2)
cat textname.txt :to display the contents in text (eg, cat temp3.txt)
sort textname.txt :sort the files in ascending order
sort -r textname.txt :sort the files in descending order
sort -n textname.txt :sort the files in ascending order when numeric data is present
sort -nr textname.txt :sort the files in descending order when numeric data is present
clear :clears the terminal
grep -i "content" textname.txt :it filter searches a file_for a particular pattern of characters, and displays all lines that contain that pattern
grep -c "content" textname.txt :it filter searches a file_for a particular pattern of characters, and displays its no of occurences
cut -b bytes textname.txt :it displays the cut portion (eg, cut -b 1,2,3 temp4.txt ie,cuts and displays 1st,2nd,3rd bits of temp4.txt)
ln filename.txt linkname.txt :to make link
rm :to remove file
uname :displays the vertion (ie,prints information about the current system)
uname -a :displays the detailed information about the vertion
sed 's/textname.txt/replacementname.txt/' :changes only the 1st occurences of textname to replacementname in each line
sed 's/textname.txt/replacementname.txt/2' :changes only the 2st occurences of textname to replacementname in each line
sed 's/textname.txt/replacementname.txt/g' :changes all the occurences of textname to replacementname in each line
free :displays information about the memory uasge
ping :displays connectivity between two nodes (ie, whether it is local area network or wide area network)
ifconfig :used to assign ip address 
cp textname.txt copyname.txt :copies the contents in textname.txt to copyname.txt
cp-p textname.txt copyname.txt :copies the same configuration of textname.txt to copyname.txt
mv textname.txt rename.txt :to change the name of the text

