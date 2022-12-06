#!/bin/zsh
echo "====== MATHS were always fun ======"

expr1=4
expr2=10

echo "====== ADDITION ======"
expr $expr1 + $expr2
echo "====== SUBTRACTION ======"
expr $expr1 - $expr2
echo "====== MULTIPLICATION ======"
expr $expr1 \* $expr2
echo "====== DIVISION ======"
expr $expr2 / $expr1
echo "====== MODULUS (REMINDER AFTER DIVISION) ======"
expr $expr2 % $expr1

# In orther to avois scaping characters, we can use ways explain in the man pages of the expr command
echo "====== MULTIPLICATION without SCAPING (SHELL ARITHMETIC) ======"
expr $(($expr1 * $expr2))

echo "====== FELL FREE TO ADD PLAY AROUND ======"
# if a variable is expected to be negative, we can prevent our script failing by using the following syntax
expr1=-5
echo "Now the value of expr1 is negative $expr1"
expr $(($expr1 + $expr2))
echo "Also works just with the normal expresion"
expr $expr1 + $expr2
echo "Using subshelling to asign the output of expr to expr2"
expr2=$(expr $expr1 + $expr2)
echo $expr2
expr2=$(expr $expr2 + $expr1)
echo $expr2
echo "====== ============= ======"