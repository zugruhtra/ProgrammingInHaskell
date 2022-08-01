dec2int :: [Int] -> Int
dec2int = foldl (\x y -> y + 10*x) 0
