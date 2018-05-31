# Command Line Basics

- wc : line, word, byte
- cat [file] : file을 stdout
- less [file] : file 읽기. scroll로 볼 수 있음.
- head/tail -n [number] [file] : read 'number' lines of file from head/tail.
    - default는 10줄.
- echo 'hi' > echo-out.txt : echo 함수의 결과값을 echo-out.txt에 쓰기를 한다.
- echo 'appended line.' >> echo-out.txt : echo 함수의 결과값을 echo-out.txt에 append한다.

# Working with Unix

- apropos
- wildcard 활용
- grep "target" small.txt state.txt (Multiple file arguments are OK.)
    - egrep is extended version of grep. use this.
    - "-n" option display the line number that a match occurs.
    - elementary metacharacter
        - '.' represents any character.
        - 's+' represents 's' can be repeated one or more.
        - 's*' represents 's' can be repeated zero or more.
        - 's{2}'(='ss') represents exactly two occurrences of the character 's'.
        - 's{2,3}'
        - '(iss){2}'
        - '(i.{2}){3}'
        - 'North|South' : pipe character. it represents either left side or right side.
    - character sets
        - '\w' : "word" characters
        - '\d' : "number" characters
        - '\s' : "space" characters
        - -v option : compliment of result. in'v'ert.
        - '\W' : "non-word" characters. (Warning : its result is different from -v option.)
        - '\D' : "non-digits" characters. (Warning : its result is different from -v option.)
        - '\S' : "non-space" characters. (Warning : its result is different from -v option.)
    - specific character sets using [ ]
        - [aeiou] : matches vowel characters.
        - [^vowel] : matches all characters that are not vowels.
        - [e-q] : all of the lowercase letters between 'e' and 'q'.
        - [e-qE-q] : all of the alphabet letters between 'e' and 'q'.
        - -i [e-q] : all of the alphabet letters between 'e' and 'q'. ignore the case.
    - Escaping, Anchors, Odds, and Ends
        - Escaping (it's used when target character is also **metacharacter**.)
            - "\+", "\."
        - Anchors
            - '^M' : ^ means start of the line, so it represents the line which starts with 'M'.
            - 's$' : $ means end of the line, so it represents the line which ends with 's'
            - First you get the **power**, then you get the **money**.
    - Example
        - egrep "^[AEIOU]{1}.+[aeiou]{1}$" : all that both begin and end with a vowel.
- find [start directory] -name "target.txt"
    - Example
        - find . -name "*.jpg"
        - find ~ -name "*.jpg"
- history
    - ~/.zsh_history, ~/.bash_history

- Customizing shell
    - alias docs='cd ~/Documents'
    - source ~/.zshrc
- Differentiate
    - diff "file1.txt" "file2.txt"
    - sdiff "file1.txt" "file2.txt"
    - md5 "file.txt" / shasum "file.txt" : createshashes or checksums that are unique to content of a file.
- Pipes
    - [program that produces output] | [program uses pipe output as input instead of file].
    - grep "[aeiou]$" states.txt | wc -l : How many US states end in vowel?
    - ls -al | grep "29" | less
- Make
    ```
    [target]: [dependencies...]
        [commands...]
    ```
    - target is a file which is created as the result of the commands.
    - all: ~ : to execute all targets.
    - clean

# Bash Programming
