-- basic example
head' :: [a] -> a
head' xs = case xs of []    -> error "No head for empty lists!"
                      (x:_) -> x

-- head' [1,2,3] -- 1


-- rewrite basic example by syntactic sugar
head'' :: [a] -> a
head'' []    = error "No head for empty lists!"
head'' (x:_) = x

-- head'' [1,2,3] -- 1


-- rewrite basic example by patterns
head''' :: [a] -> a
head''' xs = result xs
    where result []    = error "No head for empty lists!"
          result (x:_) = x

-- head''' [1,2,3] -- 1
