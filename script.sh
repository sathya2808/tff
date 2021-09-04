git init
a=$(ls)
for i in $a; do
	git add $i
	git commit -m "$i"
done
git branch -M main
git remote add origin https://github.com/sathya2808/tff.git 
git push origin main
