class Eq' a where
    (===),(/==) :: a -> a -> Bool
    x /== y = not (x === y)

data Maybe' a = Nothing' | Just' a

instance Eq a => Eq' (Maybe' a) where
    Nothing' === Nothing' = True
    (Just' x) === (Just' y) = x == y
    _ === _ = False

instance Eq a => Eq' [a] where
    [] === [] = True
    (x:xs) === (y:ys) = x == y && xs == ys
    _ === _ = False
