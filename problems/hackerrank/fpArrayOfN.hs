{-
    Problem Link: https://www.hackerrank.com/challenges/fp-array-of-n-elements/
-}

fn :: Int -> [Int]
fn n | n == 0 = [] | otherwise = n:fn (n - 1)