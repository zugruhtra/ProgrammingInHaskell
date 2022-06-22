-- Step 1: define the type
-- take' :: Int -> [a] -> [a]

-- Step 2: enumerate the cases
-- take' 0 xs 
-- take' n [] 
-- take' n (x:xs)

-- Step 3: define the simple cases
-- take' 0 xs = xs
-- take' n [] = []

-- Step 4: define the other cases
-- take' n (x:xs) = [x] ++ take' (n-1) xs

-- Step 5: generalise and simplify
-- take' _ [] = []

take' :: Int -> [a] -> [a]
take' 0 xs = xs
take' _ [] = []
take' n (x:xs) = [x] ++ take' (n-1) xs
