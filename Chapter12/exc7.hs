data Expr a = Var a | Val Int | Add (Expr a) (Expr a)
    deriving Show

instance Functor Expr where
    -- fmap :: (a -> b) -> Expr a -> Expr b
    fmap g (Var x)   = Var (g x)
    fmap _ (Val n)   = Val n
    fmap g (Add l r) = Add (fmap g l) (fmap g r)

instance Applicative Expr where
    -- pure :: a -> Expr a
    pure x = Var x

    -- (<*>) :: Expr (a -> b) -> Expr a -> Expr b
    Var g <*> Var x   = Var (g x)
    Var g <*> Add l r = Add (fmap g l) (fmap g r)
    _ <*> Val n       = Val n
    Val n <*> _       = Val n
    Add l r <*> x     = Add (l <*> x) (r <*> x)

instance Monad Expr where
    -- (>>=) :: Expr a -> (a -> Expr b) -> Expr b
    Val n >>= _   = Val n
    Var x >>= f   = f x
    Add l r >>= f = Add (l >>= f) (r >>= f)

e0 :: Expr Int
e0 = Add (Var 1) (Add (Var 2) (Val 3))

example :: Expr Int
example = e0 >>= \x -> Add (Var (x-1)) (Var (x+1))
