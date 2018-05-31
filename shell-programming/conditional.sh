[[ 4 -gt 3 ]] # if 4 is greater than 3
echo $?

[[ 3 -gt 4 ]]
echo $?

[[ 4 -gt 3 ]] && echo t || echo f
[[ 3 -gt 4 ]] && echo t || echo f

number=7
[[ $number -gt 3 ]] && echo t || echo f
[[ $number -gt 10 ]] && echo t || echo f
[[ -e $number ]] && echo t || echo f


# =~ means whethere regex is matched or not.

[[ rhythms =~ [aeiou] ]] && echo t || echo f
[[ rhythms =~ [^aeiou] ]] && echo t || echo f

my_name=sean
[[ $my_name =~ ^s.+n$ ]] && echo t || echo f

# !
[[ 7 -gt 2 ]] && echo t || echo f
[[ ! 7 -gt 2 ]] && echo t || echo f
[[ 6 -ne 3 ]] && echo t || echo f
[[ ! 6 -ne 3 ]] && echo t || echo f