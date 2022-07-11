disemvowel :: String -> String
disemvowel str = filter (\c -> not (c `elem` "aeiouAEIOU")) str
