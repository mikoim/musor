maximum' :: (Ord a) => [a] -> a
maximum' []     = error "maximum of empty list!"
maximum' [x]    = x
maximum' (x:xs) = max x (maximum' xs)

-- maximum' [3,1,4,8] -- 8


replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' (n-1) x

-- replicate' 3 "lol" -- ["lol","lol","lol"]
