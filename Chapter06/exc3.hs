(^) :: Int -> Int -> Int
n ^ 0 = 0
n ^ 1 = n
n ^ e = n * (n Main.^ (e - 1))

{-

Using the above definition, the expression 2 ^ 3 will be evalualted the
following way:

    2 ^ 3
=
    2 * (2 ^ 2)
=
    2 * (2 * (2 ^ 1)
=
    2 * (2 * 2)
=
    8

-}
