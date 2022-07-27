data Tree a = Leaf a | Node (Tree a) (Tree a)
              deriving (Show)

leaves :: Tree a -> Int
leaves (Leaf _)   = 1
leaves (Node l r) = leaves l + leaves r

balanced :: Tree a -> Bool
balanced (Leaf _)   = True
balanced (Node l r) = abs (leaves l - leaves r) <= 1 && balanced l && balanced r
