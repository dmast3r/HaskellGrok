{-
    Implement count. It takes a predicate a list of values. It then returns the number of values in the list that satisfy the predicate
-}
count :: (a -> Bool) -> [a] -> Int
count predicate = length . filter predicate