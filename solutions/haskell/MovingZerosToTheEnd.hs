moveZeros :: [Int] -> [Int]
moveZeros x = (filter (/= 0) x) ++ replicate (length (filter (== 0) x)) 0
