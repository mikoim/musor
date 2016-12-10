su :: String -> Bool
su "（´・ω・） ｽ" = True
su x = False

-- su "（´・ω・） ｽ" -- True
-- su "foobar" -- False


-- pattern in recursive function
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- factorial 0 -- 1
-- factorial 1 -- 1
-- factorial 2 -- 2
-- factorial 3 -- 6


-- pattern with tuple
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- addVectors (0, 1) (2, 3) -- (2.0,4.0)


-- as-pattern
suffix :: String -> String
suffix "" = "Empty string"
suffix all@(x:xs) = all ++ " = " ++ [x] ++ " ++ " ++ xs

-- suffix "abc" -- "abc = a ++ bc"