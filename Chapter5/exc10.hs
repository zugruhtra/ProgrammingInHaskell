import Data.Char

let2intLower :: Char -> Int
let2intLower c = ord c - ord 'a'

int2letLower :: Int -> Char
int2letLower n = chr (ord 'a' + n)

let2intUpper :: Char -> Int
let2intUpper c = ord c - ord 'A'

int2letUpper :: Int -> Char
int2letUpper n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2letLower ((let2intLower c + n) `mod` 26)
          | isUpper c = int2letUpper ((let2intUpper c + n) `mod` 26)
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
