{-
    Implement the flip function. It flips the arguments of a function that takes two arguments.
-}
myFlip :: (a -> b -> c) -> b -> a -> c
myFlip f y x = f x y