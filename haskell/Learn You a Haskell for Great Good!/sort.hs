quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smaller = [a | a <- xs, a <= x]
        larger = [a | a <- xs, a > x]
    in quicksort smaller ++ [x] ++ quicksort larger
