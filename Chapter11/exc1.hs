import Data.List

size :: Int
size = 3

type Grid = [[Player]]

data Player = O | B | X
    deriving (Eq, Ord, Show)

next :: Player -> Player
next O = X
next B = B
next X = O

empty :: Grid
empty = replicate size (replicate size B)

full :: Grid -> Bool
full = all (/= B) . concat

data Tree a = Node a [Tree a]
    deriving Show

gametree :: Grid -> Player -> Tree Grid
gametree g p = Node g [gametree g' (next p) | g' <- moves g p]

moves :: Grid -> Player -> [Grid]
moves g p
    | won g    = []
    | full g   = []
    | otherwise = concat [move g i p | i <- [0..((size^2)-1)]]

valid :: Grid -> Int -> Bool
valid g i = 0 <= i && i < size^2 && concat g !! i == B

move :: Grid -> Int -> Player -> [Grid]
move g i p =
    if valid g i then
        [chop size (xs ++ [p] ++ ys)]
    else
        []
    where
        (xs,B:ys) = splitAt i (concat g)

chop :: Int -> [a] -> [[a]]
chop _ [] = []
chop n xs = take n xs : chop n (drop n xs)

wins :: Player -> Grid -> Bool
wins p g =
    any line (rows ++ cols ++ dias)
    where
        line = all (== p)
        rows = g
        cols = transpose g
        dias = [diag g , diag (map reverse g)]

diag :: Grid -> [Player]
diag g = [g !! n !! n | n <- [0..size-1]]

won :: Grid -> Bool
won g = wins O g || wins X g

nodes :: Tree a -> Int
nodes (Node _ []) = 1
nodes (Node _ ts) = 1 + sum [nodes ts' | ts' <- ts]

depth :: Tree a -> Int
depth (Node _ []) = 0
depth (Node _ ts) = maximum [1 + depth ts' | ts' <- ts]


main :: IO ()
main = do
    putStr "Number of nodes in whole gametree: "
    putStrLn (show nodes')
    putStr "Depth of whole gametree: "
    putStrLn (show depth')
    where
        nodes' = nodes tree
        depth' = depth tree
        tree = gametree empty O