-- Excercise 1

sumOfFirstHundredSquares = sum [x | x <- [1..100]]

-- Excercise 2

grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]] 

-- Excercise 3

square :: Int -> [(Int,Int)]
square n = [(x,y) | (x,y) <- grid n n, x /= y]

-- Excercise 4

replicate' :: Int -> a -> [a]
replicate' n v = [v | _ <- [1..n]]

-- Excercise 5

pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- Excercise 6

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], x == sum (factors x) - x]

-- Excercise 7

twoComprehensions :: [(Int,Int)]
twoComprehensions = concat [[(x,y) | y <- [3,4]] | x <- [1,2]]

-- Excercise 8

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..])

-- Excercise 9

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]

