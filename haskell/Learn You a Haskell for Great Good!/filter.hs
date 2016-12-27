filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs
    | otherwise = filter' p xs

-- filter' (>=0) [-2,-1,0,1,2] -- [0,1,2]
-- [x | x <- [-2..2], x >= 0] -- [0,1,2]


largestDivisible :: Integer
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0

-- largestDivisible -- 99554
