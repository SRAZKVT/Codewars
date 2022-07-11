grow :: [Int] -> Int
grow = foldl1 (*)
