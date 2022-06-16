replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n v = v : (replicate' (n-1) v)
