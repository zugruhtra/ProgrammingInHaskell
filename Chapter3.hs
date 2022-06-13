-- Excercise 1

{-

1. ['a', 'b', 'c'] :: [Char]
2. ('a', 'b', 'c') :: (Char,Char,Char)
3. [(False, '0'),(True, '1')] :: [(Bool, Char)]
4. ([False,True],['0','1']) :: ([Bool],[Char])
5. [tail,init,reverse] :: [[a] -> [a]]

-}

-- Excercise 2

{-

1. bools :: [Bool]
   bools = [True]

2. nums :: [[Int]]
   nums = [[1,2],[3],[4,5,6]]

3. add :: Int -> Int -> Int -> Int
   add x y z = x+y+z

4. copy :: a -> (a,a)
   copy x = (x,x)

5. apply :: (a -> b) -> a -> b
   apply f x = f x

-}

-- Excercise 3

{-

1. second :: [a] -> a
2. swap :: (a,b) -> (b,a)
3. pair :: a -> b -> (a,b)
4. double :: Num a -> a
5. palindrome :: Eq a => [a] -> Bool
6. twice :: (t -> t) - > t -> t

-}

-- Excercise 5

{-

Two function of the same type are equal if they always return equal results
for equal arguments.  So both functions are identical and may be differing
only in their names. For practical reasons, it is not feasible to implement
the same functionality twice (DRY).  Furthermore, when an argument or result
type consists of infinite members (e.g. `Integer`), it is impossible to
show equallity, because you have to check for every argument/result type.
However, implementing the `Eq` class for function types with discrete values
for their argument/result types may be feasible to show, that different
implementations of certain functionallity are equal.

-}
