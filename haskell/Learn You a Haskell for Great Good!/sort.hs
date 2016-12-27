quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smaller = [a | a <- xs, a <= x]
        larger = [a | a <- xs, a > x]
    in quicksort smaller ++ [x] ++ quicksort larger


quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort (x:xs) =
    let smaller = filter (<= x) xs
    larger = filter (> x) xs
    in quicksort smaller ++ [x] ++ quicksort larger
