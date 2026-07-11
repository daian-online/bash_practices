#!/usr/bin/bash

password_length="$1"

gen_pass() {
  local password=""
  chars=(0 1 2 3 4 5 6 7 8 9 "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"\
  "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T"\
  "U" "C" "W" "X" "Y" "Z" "!" "@" "#" "$" "%" "^" "&" "*" ";" ":")

  for ((i=0; i<password_length; i++));
    do
      random_index=$(( RANDOM % ${#chars[@]}))
      password="${password}${chars[$random_index]}"

    done

  echo "Password generated: $password"
}
gen_pass "${password_length}"