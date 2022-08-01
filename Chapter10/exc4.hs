adder :: IO ()
adder = do
    putStr "How many numbers? "
    total <- getNumber
    nums <- getNumbers total
    putStr "The total is "
    putStrLn (show (sum nums))

getNumber :: IO Int
getNumber = do
    x <- getLine
    return (read x :: Int)
        
getNumbers :: Int -> IO [Int]
getNumbers 0 = return []
getNumbers n = do
    x <- getNumber
    xs <- getNumbers (n-1)
    return (x:xs)

