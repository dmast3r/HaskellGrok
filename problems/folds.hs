{-
    Implement the following using foldl, fodl1, foldr or foldr1:
    1. sum
    2. max
    3. product
    4. reverse
    5. filter
    6. head
    7. last
    8. elem
    9. map
    10. sum

    In all these cases, assume that the list will never be empty
-}
sum' :: (Num a) => [a] -> a
sum' = foldl1 (+)

max' :: (Ord a) => [a] -> a
max xs = foldl1 (\acc curr -> if curr > acc then curr else acc) xs

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

reverse' :: [a] -> [a]
reverse = foldl

filter' :: (a -> Bool) -> [a] -> [a]  
filter' p = foldr (\x acc -> if p x then x : acc else acc) []  
  
head' :: [a] -> a  
head' = foldr1 (\x _ -> x)  
  
last' :: [a] -> a  
last' = foldl1 (\_ x -> x)  

elem' :: (Eq a) => a -> [a] -> Bool
elem' x xs = foldl (\acc curr -> acc || curr == x) False xs

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\curr acc -> f curr : acc) [] xs

sum' :: (Num a) => [a] -> a
sum' x = foldl (\acc curr -> curr + acc) 0 x 