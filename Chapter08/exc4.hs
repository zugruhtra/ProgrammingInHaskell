data Tree a = Leaf a | Node (Tree a) (Tree a)
              deriving (Show)


halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

balance :: [a] -> Tree a
balance [] = error "Empty List"
balance [x] = Leaf x
balance xs = Node (balance r) (balance l)
             where 
                (r,l) = halve xs
