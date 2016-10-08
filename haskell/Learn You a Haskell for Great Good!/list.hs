-- concatenate lists by ++
"foo" ++ " " ++ "bar"
[1,2] ++ [3,4]
[3,2,1] ++ [0] -- ++ requires two lists


-- fast way to add an element to the beginning of the list by :
'H' : "askell"
1:[2,3,4,5]


-- retrieve element from list by index

[1,2,3] !! 0 -- 1
"LOL" !! 1 -- O


-- compare lists in order by elements

[1,2,3] < [1,2,4] -- True
[1,2,3] < [1,2,3,4] -- True
[1,2,3] < [1,3] -- True


-- other list operations

head "ABC" -- 'A'
tail "ABC" -- "BC"
last "ABC" -- 'C'
init "ABC" -- "AB"

length "ABC" -- 3

null [] -- True

reverse "ABC" -- "CBA"

take 0 "ABC" -- []
take 2 "ABC" -- "AB"

drop 0 "ABC" -- "ABC"
drop 2 "ABC" -- "C"

maximum [5,3,7,2,11] -- 11
minimum [5,3,7,2,11] -- 2

sum [1,2,3] -- 6
product [1,2,3] -- 6

elem 'O' "LOL" -- True
'O' `elem` "LOL" -- True

cycle "LO" -- generate infinite list from a list
take 11 $ cycle "LO" -- "LOLOLOLOLOL"

repeat 'ω' -- generate infinite list from an element
take 3 $ repeat 'ω' -- "ωωω"
