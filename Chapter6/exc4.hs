euclid :: Int -> Int -> Int
euclid n m | n == m = n
           | n > m = euclid (n-m) m
           | n < m = euclid n (m-n)
