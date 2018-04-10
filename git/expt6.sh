#install git
sudo apt-get install git
#initial configuration
mkdir cs4b14
cd cs4b14
git init
git config --global user.name 'anjithajoys'
git config --global user.email 'anjithajoys@gmail.com'
#to get git status
git status
#to add files to git
git add file1
#to add multiple files to git
git add file2 file3
#to remove files from git
git rm --cached [filename]
#to commit changes
git commit -m "My first commit"
#to push commits
git push
#to pull commits
git pull

