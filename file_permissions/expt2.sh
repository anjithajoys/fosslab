#permissions in action
ls -l /etc
ls -l /etc/hosts
#changing permissions
ls -l /etc/shadow
#create empty files
touch file1 file2 file3 file4
ls -l
#add owner execute bit
chmod u+x file1
ls -l file1
#add other write and execute bit
chmod o+wx file2
ls -l file2
#remove group read bit
chmod g-r file3
ls -l file3
#add read, write and execute to everyone
chmod ugo+rwx file4
ls -l file4
#chmod with numbers
chmod 667 file1
chmod 251 file1
#create some empty files
touch file1 file2 file3 file4
ls -l
#add owner execute bit
chmod 744 file1
ls -l file1
#add other write and execute bit
chmod 647 file2
ls -l file2
#remove group read bit
chmod 604 file3
ls -l file3
#add read, write and execute to everyone
chmod 777 file4
ls -l file4
