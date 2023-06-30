{-
    Problem Link: https://www.hackerrank.com/challenges/fp-sum-of-odd-elements/problem
-}
sumOfOddElements :: [Int] -> Int
sumOfOddElements = sum . filter odd