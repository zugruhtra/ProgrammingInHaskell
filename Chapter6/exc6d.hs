(!!) :: [a] -> Int -> a
(!!) (x:_) 0 = x
(!!) (_:xs) n = (Main.!!) xs (n-1)
