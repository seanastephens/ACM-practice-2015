# pass problem name as first arg

mkdir $1
cd $1
wget "http://mcicpc.cs.atu.edu/archives/2014/mcpc2014/"$1/$1.html
wget "http://mcicpc.cs.atu.edu/archives/2014/mcpc2014/"$1/in.txt
wget "http://mcicpc.cs.atu.edu/archives/2014/mcpc2014/"$1/out.txt
cd ..

