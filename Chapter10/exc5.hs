adder :: IO ()
adder = do
    putStr "How many numbers? "
    total <- getNumber
    nums <- sequence (replicate total getNumber)
    putStr "The total is "
    putStrLn (show (sum nums))

getNumber :: IO Int
getNumber = do
    x <- getLine
    return (read x :: Int)
