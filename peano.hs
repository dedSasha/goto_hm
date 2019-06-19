data Nat = O | S Nat deriving (Show, Eq)
--(==) :: Eq a => a -> a -> Bool
red (S n) = n

a ^+^ b
  | a == O = b
  | otherwise = (red a)^+^(S(b))

a ^*^ b = let 
  helper acc a b =
    if a == O then acc
    else helper (acc ^+^ b) (red a) b
  in helper O a b