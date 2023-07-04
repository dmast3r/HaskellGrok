{-
    Find how many elements does it take for the sum of the roots of all natural numbers to exceed n
-}

-- Todo: write the method signature
squareRootSums n = length (takeWhile (<= n) $ scanl1 (+) $ map sqrt [1..]) + 1 q