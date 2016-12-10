bmiTell :: Double -> Double -> String
bmiTell height weight
    | bmi < 15 = "Very severely underweight"
    | bmi < 16 = "Severely underweight"
    | bmi < 18.5 = "Underweight"
    | bmi < 25 = "Normal (healthy weight)"
    | bmi < 30 = "Overweight"
    | bmi < 35 = "Obese Class I (Moderately obese)"
    | bmi < 40 = "Obese Class II (Severely obese)"
    | otherwise = "Obese Class III (Very severely obese)"
    where bmi = weight / height ^ 2

-- bmiTell 1.8 60 -- "Normal (healthy weight)"
