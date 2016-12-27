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


take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

-- take' 2 [1,2,3] -- [1,2]


reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

-- reverse' [3,2,1]


repeat' :: a -> [a]
repeat' x = x : repeat' x

-- take' 5 $ repeat' 1 -- [1,1,1,1,1]


zip' :: [a] -> [b] -> [(a,b)]
zip' _ []          = []
zip' [] _          = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

-- zip' [1,2,3] [4,5,6] -- [(1,4),(2,5),(3,6)]


elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem' a xs

-- elem' 2 [1,2,3] -- True
