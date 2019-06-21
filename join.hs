import Data.List

easyJoin :: [[a]] -> a -> [a]
easyJoin l s = init $ foldr (\x acc -> (x ++ [s]) ++ acc) [] l

hardJoin :: Eq a => [a] -> a -> [[a]]
hardJoin str s = let (buf, acc) = foldr (\x (buf, acc) -> if x == s
                                               then ([], buf : acc)
                                               else (x : buf, acc)) ([], []) str in buf : acc

list = ["kek", "puk"]
splitter = '.'
string = "kek.puk"
