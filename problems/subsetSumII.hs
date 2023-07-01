{-
    Given a list of integers and an integer N, find the length of the smallest subset that sums greater than N, return -1 if there are none.
-}

import Data.List

foo :: [Int] -> Int -> Int
foo arr n = if minLen <= length arr then minLen else -1
    where
        bar [] m = if m < 0 then 0 else length arr + 1
        bar (x:xs) m
            | m < 0 = 0
            | otherwise = 1 + bar xs (m - x)
        minLen = bar (reverse $ sort arr) n