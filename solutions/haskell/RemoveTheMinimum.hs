remove :: (Eq a) => a -> [a] -> [a]
remove _ []     = []
remove x (e:r)
    | x == e    = r
    | otherwise = e:remove x r

removeSmallest :: [Int] -> [Int]
removeSmallest l = remove (minimum l) l
