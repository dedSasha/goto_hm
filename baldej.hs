import Data.List
l = [1, 2, 3, 4, 5, 6, 0, 0]
ml = map (\x -> x^2) l
fl = filter (\x -> if x==0 then True else False) l
--ща самый балдёж
fucking_cool_l = [x^2 | x <- [1, 3..]]
--не ну это BaLdEj
--шо я увидел
super_fucking_cool_l = [(x, y, i) | x <- [1..100],
                                    y <- [1..100],
                                    i <- [1..100],
                                    x^2 + y^2 == i^2]