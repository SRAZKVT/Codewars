uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder e
    | e == [] = []
    | tail e == [] = e
    | head e == head (tail e) = uniqueInOrder $ tail e
    | otherwise = head e:(uniqueInOrder (tail e))
