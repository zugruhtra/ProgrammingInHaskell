data Tree a = Leaf a | Node (Tree a) a (Tree a)
              deriving (Show)

-- this implementation is more efficient because it uses less comparisons
-- than the equivalent implementation using guard expressions.
occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Node l y r) 
    = case compare x y of
        EQ -> True
        LT -> occurs x l
        GT -> occurs x r
