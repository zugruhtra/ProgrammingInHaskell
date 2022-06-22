merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x > y  = [y] ++ merge (x:xs) ys
                    | x <= y = [x] ++ merge xs (y:ys)

halve :: [a] -> ([a],[a])
halve xs = (take len xs, drop len xs)
           where len = length xs `div` 2

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
           where 
                (left,right) = halve xs
