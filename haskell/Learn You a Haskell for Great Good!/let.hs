-- let binds variable everywhere but it's not shared between guards and it has value
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

-- cylinder 3 6 -- 169.64600329384882


answer = 4 * (let a = 9 in a + 1) + 2

-- answer -- 42


-- using let like as anonymous function
-- define function into local scope
square = [let d x = x * x in (d 5, d 3, d 2)]

-- square -- [(25,9,4)]


-- let can bind multiple values
miko = let a = 35; b=100; in a * b + a

-- miko -- 35
