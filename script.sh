#! /bin/bash

mkdir fol_1 fol_2


cd fol_1
touch 1_1.txt 1_2.txt 1_3.txt
chmod 700 *_1.txt *_3.txt
chmod 777 *_2.txt


cd ..
cd fol_2
touch 2_1.txt 2_2.txt 2_3.txt

cd ..

echo -e "fol_1/nfol_2" >> .gitignore

git status
git add .
git commit -m "week 2 lab - bash & git : generate script.sh bash script to push"

git remote add origin https://github.com/EmmaDudau/devops-lab-2-task.git
git push -u origin main
