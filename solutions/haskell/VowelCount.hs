import Data.List

getCount :: String -> Int
getCount s = length (filter (\c -> length (find (==c) ['a','e','o','i','u']) > 0) s)
