plagues=(blood frogs lice flies sickness bils hail locusts darkness death)

echo ${plagues[1]} # in zsh, array index starts in 1.

echo ${plagues[*]}

plagues[4]=disease
echo ${plagues[*]}

echo ${plagues[*]:5:3}

# # finds length of array.
echo ${#plagues[*]}

# +=
dwarfs=(grumpy sleepy sneezy doc)
echo ${dwarfs[*]}
dwarfs+=(bashful dopey happy)
echo ${dwarfs[*]}