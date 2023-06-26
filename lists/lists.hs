{-
    Problems:
    1. Write your own function myLast, which returns the last element of a list.
    2. Write your own function to return the second last element of a list, also called the penultimate element.
    3. Duplicate the elements of a list, that is repeat every element. So, [x, y, z] becomes [x, x, y, y, z].
    4. Compute the average of a list.
    5. Insert an element at the ith position in a list.
-}

--- Solution 1 ---

-- Use recursion and pattern matching
myLast :: [a] -> a
myLast [] = error "List must not be empty!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Using inbuilt functions
myLast' :: [a] -> a
myLast' x = head (reverse x)

-- Using function composition
myLast'' :: [a] -> a
myLast'' = head . reverse

--- Solution 2 ---

-- Use recursion and pattern matching
mySecondLast :: [a] -> a
mySecondLast [] = error "List must not be empty!"
mySecondLast [x] = error "List must have more than one elements!"
mySecondLast [x, _] = x
mySecondLast (_:xs) = mySecondLast xs

-- Use inbuilt functions
mySecondLast' :: [a] -> a
mySecondLast' = head . tail . reverse

--- Solution 3 ---
duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x:x:duplicate xs

--- Solution 4 ---
average :: [Double] -> Double
average [] = 0
average x = add x / count x
    where
        add [] = 0
        add (x:xs) = x + add xs

        count [] = 0
        count (x:xs) = 1 + count xs

--- Solution 5 ---
insertIn :: a -> [a] -> Int -> [a]
insertIn x y 1 = x:y
insertIn x (y:ys) n = y:insertIn x ys (n - 1)