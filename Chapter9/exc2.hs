rmFstOcc :: Eq a => a -> [a] -> [a]
rmFstOcc _ []     = []
rmFstOcc x (y:ys) = if x == y then ys else y : (rmFstOcc x ys)

isChoice :: Eq a => [a] -> [a] -> Bool
isChoice [] _      = True
isChoice (x:xs) ys = x `elem` ys && isChoice xs (rmFstOcc x ys)
