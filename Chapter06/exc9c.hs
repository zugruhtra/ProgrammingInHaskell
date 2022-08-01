-- Step 1: define the type
-- last' :: [a] -> a

-- Step 2: enumerate the cases
-- last' [x]
-- last' (x:xs)

-- Step 3: define the simple cases
-- last' [x] = x

-- Step 4: define the other cases
-- last' (x:xs) = last' xs

-- Step 5: generalise and simplify
-- last' (_:xs) = last' xs

last' :: [a] -> a
last' [x] = x
last' (_:xs) = last' xs
