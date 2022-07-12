solution :: String -> String -> Bool
solution s1 s2 = s2 == (reverse (take (length s2) (reverse s1)))
