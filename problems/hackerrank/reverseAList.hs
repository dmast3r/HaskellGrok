{-
    Problem Link: https://www.hackerrank.com/challenges/fp-reverse-a-list/problem

    Problem Statement:
    You are given a list of  elements. Reverse the list without using the reverse function. The input and output portions will be handled automatically. You need to write a function with the recommended method signature.
-}
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]