{-
    Problem link: https://www.hackerrank.com/challenges/fp-list-replication/problem

    Problem Statement:
    Given a list, repeat each element in the list  amount of times. The input and output portions will be handled automatically by the grader.You need to write a function with the recommended method signature.
-}

-- using recursion with pattern matching
f :: Int -> [Int] -> [Int]
f n [] = []
f n (x:xs) = dup n x ++ f n xs
  where
    dup 1 x = [x]
    dup n x = x:dup (n - 1) x

{-
using function composition. Here's how it works:

Let's assume foo = concatMap . replicate.
1. When we execute foo 2 [1, 2, 3], the first step is to evaluate foo 2.
As a result, replicate returns a function that is then passed to concatMap as input.
2. concatMap takes this function as input and returns another function that expects a foldable.
3. At this point, we have a function that accepts a foldable. This function is what concatMap uses to first map and then flatten the input.
4. The function for mapping comes from what was returned by replicate. And what does this function do? It replicates!
5. It's important to note that all variables are being closed over here (analogous to closures in JavaScript).
6. Let's assume what we have till now is g, and g is waiting for a foldable.
7. Finally, we execute g [1, 2, 3] and this is where all the magic happens.
concatMap applies the function to every element of [1, 2, 3]. What function, you ask? The one that we got from replicate. And what does this function do? It replicates!
8. So, [1, 2, 3] turns into [[1, 1], [2, 2], [3, 3]], which is then flattened by concatMap to produce [1, 1, 2, 2, 3, 3].
-}
f' :: Int -> [Int] -> [Int]
f' = concatMap . replicate