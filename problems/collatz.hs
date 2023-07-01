{-
    For all the numbers between 1 to 100, find those whose length of the Collatz sequence is greater than 15.
-}
foo :: Int
foo = length $ filter (15 <) $ map collatz [1..100]
    where
        collatz n
            | n == 1 = 1
            | mod n 2 == 0 = 1 + collatz (div n 2)
            | otherwise = 1 + collatz (n * 3 + 1)