applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- applyTwice (subtract 5) 10 -- 0
-- applyTwice (*2) 4 -- 16
-- applyTwice (++ "OL") "LOL" -- "LOLOLOL"
-- applyTwice (applyTwice (++ "OL")) "LOL" -- "LOLOLOLOLOL"


zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- zipWith' (+) [1,2,3] [4,5,6] -- [5,7,9]


flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f y x = f x y
