makeNegative :: (Num a, Ord a) => a -> a
makeNegative n = if n > 0 then (n * (-1)) else n
