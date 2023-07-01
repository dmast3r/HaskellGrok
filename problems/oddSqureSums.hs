{-
    find the sum of all odd squares smaller than 10k
-}

foo = sum $ takeWhile (< 10000) $ filter odd $ map (^2)[1..]