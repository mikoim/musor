[1..5] -- [1,2,3,4,5]

-- Unicode
['a'..'Z'] -- ""
['A'..'z'] -- "ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz"
['あ'..'ん'] -- "あぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりれろゎわゐゑをん"

-- a_n = 1 + (n - 1) 2
[1,3..21] -- [1,3,5,7,9,11,13,15,17,19,21]

-- retrive 10 elements from infinite list
take 10 [1..] -- [1,2,3,4,5,6,7,8,9,10]
