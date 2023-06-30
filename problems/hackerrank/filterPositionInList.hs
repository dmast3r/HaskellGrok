{-
    Problem Link: https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem

    Problem Description: For a given list with  integers, return a new list removing the elements at odd positions. The input and output portions will be handled automatically. You need to write a function with the recommended method signature.
-}

-- use list comprehension --
f :: [Int] -> [Int]
f lst = map (lst!!) $ filter even [0..length lst]

-- use recursion --
f' :: [Int] -> [Int]
f' [x] = [x]
f' (x1:x2:xs) = x1:f'(xs)