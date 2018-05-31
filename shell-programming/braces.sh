echo {0..9}
echo {a..z}
echo {W..Z}

echo a{0..4}
echo b{0..4}c

echo {1..3}{A..C}

start=4
end=9
echo {$start..$end}
eval echo {$start..$end}

echo {{1..3},{a..c}}
echo {Who,What,Why,When,How}\?