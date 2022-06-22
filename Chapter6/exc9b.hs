-- Step 1: define the type
-- take' :: Int -> [a] -> [a]

-- Step 2: enumerate the cases
-- take' 0 xs 
-- take' n (x:xs)

-- Step 3: define the simple cases
-- take' 0 xs = []

-- Step 4: define the other cases
-- take' n (x:xs) = x : take' (n-1) xs

-- Step 5: generalise and simplify
-- take' 0 _ = []

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' n (x:xs) = x : take' (n-1) xs
