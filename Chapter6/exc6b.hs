concat' :: [[a]] -> [a]
concat' [x] = x
concat' (x:xs) = x ++ concat' xs
