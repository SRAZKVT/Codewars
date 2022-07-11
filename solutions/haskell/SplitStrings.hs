solution :: String -> [String]
solution s
    | length s == 0 = []
    | length s == 1 = [[head s,'_']]
    | length s == 2 = [s]
    | otherwise     = [[head s, head $ tail s]] ++ solution (tail $ tail s)
