## Applicative laws

1. `pure id <*> x   = x`
2. `pure (g x)      = pure g <*> pure x`
3. `x <*> pure y    = pure (\g -> g y) <*> x`
4. `x <*> (y <*> z) = (pure (.) <*> x <*> y) <*> z`

## Types

### Law 1

    x :: f a

### Law 2

    x :: a
    g :: a -> b


### Law 3

    x :: Applicative f => f (a -> b)
    y :: a
    g :: a -> b

### Law 4

    x :: Applicative f => f (b -> c)
    y :: Applicative f => f (a -> b)
    z :: Applicative f => f a

