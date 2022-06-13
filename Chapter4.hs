-- Excercise 1

halve :: [a] -> ([a],[a])
halve xs = (take n xs,drop n xs) where n = (length xs) `div` 2

-- Excercise 2

third :: [a] -> a
third xs = head (tail (tail xs))

third' :: [a] -> a
third' xs = xs !! 3

third'' :: [a] -> a
third'' (_:(_:(x:xs))) = x

-- Excercise 3

safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

safetail' :: [a] -> [a]
safetail' xs | null xs = []
             | otherwise = tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

-- Excercise 4

{-

* Variant 1
False || False = False
False || True = True
True || False = True
True || True = True

* Variant 2
True || _ = True
_ || True = True
_ || _ = False

* Variant 3
False || b = b
True || _ = True

* Variant 4
False || False = False
_ || _ = True
-}


-- Excercise 5

and' :: Bool -> Bool -> Bool
and' a b = if a then (if b then True else False) else False

-- Excercise 6

and'' :: Bool -> Bool -> Bool
and'' a b = if a then b else False

-- Excercise 7

mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x*y*z))


-- Excercise 8

luhnDouble :: Int -> Int
luhnDouble x = if n > 9 then n - 9 else n
               where n = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0
