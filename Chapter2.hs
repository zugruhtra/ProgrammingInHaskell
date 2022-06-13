-- Excercise 2

{-
2^3*4   = (2^3)*4
2*3+4*5 = (2*3)+(4*5)
2+3*4^5 = 2+(3*(4^5))
-}

-- Excercise 3

{-
The three syntax errors are:

1. Name of the Function starts with uppercase letter
2. Usage of forward ticks instead of backticks for binary function `div`
3. Violation of the Layout Rule: `xs` is not properly indented

A syntactically correct solution would be:

  n = a `div` length xs
      where
          a = 10
          xs = [1,2,3,4,5]

-}

-- Excercise 4

myLast1 xs = head (reverse xs)
myLast2 xs = xs !! (length xs - 1) 

-- Excercise 5

myInit1 xs = reverse (tail (reverse xs))
myInit2 xs = take (length xs - 1) xs

