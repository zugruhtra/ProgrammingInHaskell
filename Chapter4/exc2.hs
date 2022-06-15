third :: [a] -> a
third xs = head (tail (tail xs))

third' :: [a] -> a
third' xs = xs !! 3

third'' :: [a] -> a
third'' (_:(_:(x:xs))) = x
