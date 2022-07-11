findOutlier :: [Int] -> Int
findOutlier ls = if length (filter even ls) == 1 then head (filter even ls) else head (filter odd ls)
