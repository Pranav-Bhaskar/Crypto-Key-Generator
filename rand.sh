echo "Do you want to import the seed from a file ? (Y/N) : ";
read var
if [ $var == 'Y' ] || [ $var == 'y' ]
then
	flag='1';
	while [ $flag == '1' ]; do
		echo "Enter the directory of the file : ";
		read file_dir
		if [[ -f $file_dir ]]
		then 
			flag='0';
		fi
	done
	seed=`cat $file_dir`
else
	echo "Enter the seed : ";
	read seed
fi
echo "Enter the length of KEY you want : ";
read len
key=`python3 rand.py $len $seed`
echo "The key is : ";
echo "-------------------------START OF KEY-------------------------";
echo "$key";
echo "--------------------------END OF KEY--------------------------";
echo "-------------------------START OF KEY-------------------------" > temp.key;
echo "$key" >> temp.key; 
echo "--------------------------END OF KEY--------------------------" >> temp.key; 
echo "The key can also be found in the file temp.key in the current directory";
echo "HAPPY ENCRYPTING"; 
