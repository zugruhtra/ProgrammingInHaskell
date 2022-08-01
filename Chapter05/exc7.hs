twoComprehensions :: [(Int,Int)]
twoComprehensions = concat [[(x,y) | y <- [3,4]] | x <- [1,2]]
