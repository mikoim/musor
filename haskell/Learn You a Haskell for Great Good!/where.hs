-- where with patterns
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

-- initials "Hana" "Mogera" -- "H. M."


-- where with function
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

-- calcBmis [(50,1.8),(100,2.0)] -- [15.432098765432098,25.0]
