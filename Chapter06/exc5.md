## Evaluation of `length`

The recursive definition of `length` is:

```hs
length :: [a] -> Int
length []     = 0
length (_:xs) = 1 + length xs
```

The recursive evaluation of `length [1,2,3]` is:

```
    length [1,2,3]
=
    1 + length [2,3]
=
    1 + (1 + length [3])
=
    1 + (1 + (1 + length []))
=
    1 + (1 + (1 + 0))
=
    3
    
```

## Evaluation of `drop`

The recursive definition of `drop` is:

```hs
drop :: Int -> [a] -> [a]
drop 0 xs     = xs
drop _ []     = []
drop n (_:xs) = drop (n-1) xs
```

The recursive evaluation of `drop 3 [1,2,3,4,5]` is:

```
    drop 3 [1,2,3,4,5]
=
    drop 2 [2,3,4,5]
=
    drop 1 [3,4,5]
=
    drop 0 [4,5]
=
    [4,5]
```

## Evaluation of `init`

The recursive definition of `init` is:

```hs
init :: [a] -> [a]
init [_]    = []
init (x:xs) = x : init xs
```

The recursive evaluation of `init [1,2,3]` is:

```
    init [1,2,3]
=
    1 : (init [2,3])
=
    1 : (2 : init [3])
=
    1 : (2 : [])
=
    [1,2]
```
