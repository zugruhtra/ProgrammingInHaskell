luhnDouble :: Int -> Int
luhnDouble x = if n > 9 then n - 9 else n
               where n = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0
