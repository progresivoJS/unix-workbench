echo "Explicit list:"

for picture in img001.jpg img002.jpg img003.jpg
do
    echo "picture is equal to $picture"
done

echo ""
echo "Array:"

stooges=(curly larry moe)

for stooge in ${stooges[*]}
do
    echo "Current stooge: $stooge"
done

echo ""
echo "Command substituition:"

for code in $(ls)
do
    echo "$code is a bash script"
done