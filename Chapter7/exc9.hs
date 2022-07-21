altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ []       = []
altMap f1 f2 (x:xs) = f1 x : altMap f2 f1 xs
