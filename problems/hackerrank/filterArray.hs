{-
    Problem Link: https://www.hackerrank.com/challenges/fp-filter-array/problem

    Problem Statement:
    Filter a given array of integers and output only those values that are less than a specified value . The output integers should be in the same sequence as they were in the input. You need to write a function with the recommended method signature for the languages mentioned below. For the rest of the languages, you have to write a complete code.
-}

-- Using list comprehension
f :: Int -> [Int] -> [Int]
f n arr = [x | x <- arr, x < n]

{-
    This solution uses the built-in filter function. Here's how it works:
    1. The filter function takes a predicate and a list as its input. It applies the predicate to every element of the list and filters out those elements that satisfy the predicate.
    2. The < operator in Haskell is a binary function written in infix notation (like any other operator).
    3. In Haskell, infix operators can be partially applied. Partial application here means passing only a subset of all the arguments. There are two ways to achieve this:
        1. (x <) or (<) x: Both apply the argument as x as the first operand. So: (1 <) 2 or (<) 1 2 both return True.
        2. (< x): Applies x as the second operand. So, (< 1) 2 returns False.
    More on this here: https://stackoverflow.com/questions/10131300/partial-application-with-infix-functions
    4. So, (< n) returns a partially applied function which is equivalent to:
    (\x -> x < n)
    5. Finally, this partially applied function is applied to every element of arr.
-}
f' :: Int -> [Int] -> [Int]
f' n arr = filter (< n) arr
