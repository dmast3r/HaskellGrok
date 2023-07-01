quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort (filter (< x) (x:xs)) ++ filter (== x) (x:xs) ++ quickSort (filter (> x) (x:xs))
