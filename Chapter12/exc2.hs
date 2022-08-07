{-# LANGUAGE NoImplicitPrelude #-}

class Functor f where
    fmap :: (a -> b) -> f a -> f b

(.) :: (b -> c) -> (a -> b) -> a -> c
(.) f g x = f (g x)

instance Functor ((->) a) where
    -- fmap :: (b -> c) -> (a -> b) -> (a -> c)
    fmap = (.)