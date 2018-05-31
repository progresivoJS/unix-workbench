true
echo $?
false
echo $?
true && echo "Program 1 was executed."
false && echo "Program 2 was executed."

false && true && echo Hello
echo 1 && false && echo 3
echo Athos && echo Porthos && echo Aramis

true || echo "Program 1 was executed."
false || echo "Program 2 was executed."

false || echo 1 || echo 2
echo 3 || false || echo 4
echo Athos || echo Porthos || echo Aramis

echo Athos || echo Porthos && echo Aramis
echo Gaspar && echo Balthasar || echo Melchior