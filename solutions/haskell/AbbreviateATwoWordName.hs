import Data.Char

getInitials :: String -> String
getInitials s = [(toUpper (head s)),'.',(toUpper (head (last (words s))))]
