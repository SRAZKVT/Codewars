find_shortest :: String -> Integer
find_shortest n = toInteger (minimum (map (length) (words n)))
