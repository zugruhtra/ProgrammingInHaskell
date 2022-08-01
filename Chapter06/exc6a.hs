and' :: [Bool] -> Bool
and' [x]    = x
and' (x:xs) = x == and' xs
