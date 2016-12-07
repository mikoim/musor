removeNonHiragana :: [Char] -> [Char]
removeNonHiragana s = [ c | c <- s, c `elem` ['あ'..'ん']]

-- removeNonHiragana "巫女（みこ、ふじょ）は、主として日本の神に仕える女性のこと。" -- "みこふじょはとしてのにえるのこと"

factorial :: Integer -> Integer
factorial n = product [1..n]
-- factorial 3 -- 6

circumference :: Float -> Float
circumference r = 2 * pi * r
-- circumference 1 -- 6.2831855

circumference' :: Double -> Double
circumference' r = 2 * pi * r
-- circumference' 1 -- 6.283185307179586

