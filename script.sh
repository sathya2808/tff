a=$(ls)
c=1
for i in $a;do
 git add $i
 if [[($c%4==0)]];
 then
   git commit -m "$i"
   git branch -M main
   git remote add origin https://github.com/sathya2808/commitdemo.git
   git push origin main
 fi
 c=$c+1
done
