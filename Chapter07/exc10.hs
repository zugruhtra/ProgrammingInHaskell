altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ []       = []
altMap f1 f2 (x:xs) = f1 x : altMap f2 f1 xs

luhnDouble :: Int -> Int
luhnDouble x = if n > 9 then n - 9 else n
               where n = x * 2

luhn :: [Int] -> Bool
luhn = (== 0) . (`mod` 10) . sum . altMap luhnDouble id
