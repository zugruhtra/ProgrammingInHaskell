The list comprehension `[f x | x <- xs, p x]` applies the function `f`
to every element of the list `xs` which holds the predicate `p`. This
behavior can also be expressed using the `map` and `filter` functions
and *function composition*: `map f . filter p`
