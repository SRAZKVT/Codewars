printerError :: [Char] -> [Char]
printerError s = show (length (filter (>'m') s)) ++ "/" ++ show (length s)
