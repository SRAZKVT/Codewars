findNextSquare :: Integer -> Integer
findNextSquare n = let x = floor (sqrt (fromIntegral n)) in if x^2 == n then (x + 1)^2 else -1
