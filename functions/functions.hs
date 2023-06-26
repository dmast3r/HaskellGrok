factorial :: Integer -> Integer -- declaring the function

{-
    Next, we write the definition of this function. For this, we leverage what's known as Pattern Matching in Haskell.
    1. The order in which we define these patterns matter, and therefore, the base must come before all the other patterns.
    2. Patterns are matched from top-bottom, in the order in which they are defined.

-}
-- defining the function
factorial 0 = 1 -- Base Case
factorial n = n * factorial(n - 1) -- recursive case for a generic n


{-
    Guard Expressions
-}
absValue :: Integer -> Integer
absValue n
    | n >= 0 = n
    | otherwise = (-n)

{-
    Problems:
        1. Find the power of an integer when raised to another integer.
        2. Find whether a number is prime or not.
        3. Find the Nth Fibonacci number.
        4. Write a function to compute the euclidean distance, given two coordinates.
-}


power :: Integer -> Integer -> Integer
power x 0 = 1
power x p
    | even p = y * y
    | otherwise = y * y * x
    where
        y = power x (y `div` 2)

{-
    This implementation uses list comprehension and anonymous lambda.
-}
isPrime :: Integer -> Bool
isPrime n
    | n <= 1 = False
    | otherwise = all (\number -> n `rem` number /= 0) (takeWhile (\number -> number * number <= n) [2..])


{-
    This implementation uses only recursion
-}
isPrime' :: Integer -> Bool
isPrime' n
    | n <= 1 = False
    | otherwise = not (hasDivisors(2))
    where
        {-
            This function checks if starting from x, n has any divisor (not including n itself)
        -}
        hasDivisors :: Integer -> Bool
        hasDivisors divisor
            | divisor * divisor > n = False
            | otherwise = n `rem` divisor == 0 || hasDivisors (divisor + 1)


fibonacci :: Integer -> Integer
fibonacci n
    | n <= 2 = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

euclideanDistance :: (Floating a) => (a, a) -> (a, a) -> a
euclideanDistance (x1, y1) (x2, y2) = sqrt (sq (delta x1 x2) + sq (delta y1 y2))
    where
        sq x = x * x
        delta x y = x - y