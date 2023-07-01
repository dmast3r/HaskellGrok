{-
    Given an array of integers and a number N, check if there exists a subset whose sum is greater than N.
-}
foo :: [Int] -> Int -> Bool
foo = (>) . sum . filter (0 <)


