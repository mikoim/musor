map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map f xs

-- map' (++ "su") ["chinjaoro-","Mushus"] -- ["chinjaoro-su","Mushussu"]
