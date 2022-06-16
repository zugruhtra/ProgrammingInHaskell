merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x > y  = [y] ++ merge (x:xs) ys
                    | x <= y = [x] ++ merge xs (y:ys)
