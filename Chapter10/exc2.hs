type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do 
    putStr (show row)
    putStr ": "
    putStrLn (concat (replicate num "* "))

putBoard' :: Int -> Board -> IO ()
putBoard' _          [] = return ()
putBoard' r (num:board) = do
    putRow r num
    putBoard' (r + 1) board

putBoard :: Board -> IO ()
putBoard = putBoard' 1
    

