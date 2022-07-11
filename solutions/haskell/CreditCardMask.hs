mask :: String -> Int -> String
mask s n
    | s == []   = []
    | n < 4     = (head s):(mask (tail s) (n + 1))
    | otherwise = concat $ replicate (length s) "#"

maskify :: String -> String
maskify s = reverse $ mask (reverse s) 0
