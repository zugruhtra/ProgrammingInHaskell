{-# LANGUAGE NoImplicitPrelude #-}

class Functor f where
    fmap :: (a -> b) -> f a -> f b

class Functor f => Applicative f where
    pure  :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b

(.) :: (b -> c) -> (a -> b) -> a -> c
(.) f g = \x -> f (g x)

const :: a -> b -> a
const x _ = x

instance Functor ((->) a) where
    -- fmap :: (b -> c) -> (a -> b) -> (b -> c)
    fmap = (.)

instance Applicative ((->) a) where
    -- pure :: b -> b -> a
    pure = const
    
    -- (<*>) :: (a -> b -> b) -> (a -> b) -> (b -> c)
    f <*> g = \x -> f x (g x)