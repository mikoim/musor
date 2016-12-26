multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

{-
*Main> :t multThree 1
multThree 1 :: Int -> Int -> Int
*Main> :t multThree 1 2
multThree 1 2 :: Int -> Int
*Main> :t multThree 1 2 3
multThree 1 2 3 :: Int
-}


multTwoWithNine = multThree 9

-- multTwoWithNine 8 7 -- 504


compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

-- compareWithHundred 1 -- GT
-- compareWithHundred 101 -- LT


divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

-- divideByTen 10 -- 1.0


isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

-- isUpperAlphanum 'A' -- True
-- isUpperAlphanum '0' --  False
