type Bit = Int

unfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [b]
unfold p h t x | p x       = []
               | otherwise = h x : unfold p h t (t x)

-- chop8
chop8 :: [Bit] -> [[Bit]]
chop8 = unfold null (take 8) (drop 8)

-- map f
map' :: (a -> b) -> [a] -> [b]
map' f = unfold null (f . head) tail

-- iterate f
iterate' :: (a -> a) -> a -> [a]
iterate' = unfold (const False) id
