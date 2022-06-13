-- Excecise 1

{-
      double (double 2)
  =
      double 2 + double 2
  =
      double 2 + (2 + 2)
  =
      (2 + 2) + (2 + 2)
  =
      4 + 4
  =
      8
-}

-- Excecise 2

{-

The definition of `sum` is:

  sum [] = 0
  sum (n:ns) = n + sum ns

So, for `sum [x]`:

      sum [x]
  =
      x + sum []
  =
      x + 0
  =
      x

-}

-- Excecise 3

{-

The definition of `product` is:

  product [] = 1
  product (n:ns) = n * product ns

So, for `product [2,3,4]`:

    product [2,3,4]
=
    2 * product [3,4]
=
    2 * 3 * product [4]
=
    2 * 3 * 4 * product []
=
    2 * 3 * 4 * 1
=
    24
    
-}

-- Excecise 4

{-
 
qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
               where
                    smaller = [a | a <- xs, a <= x]
                    larger = [b | b <- xs, b > x]

-}

-- Excecise 5

{-

By replacing `<=` with `<` all pivot elements will be ignored except the first one.
Subsequently, the modified function will produce a sorted list of unique elements.

-}
