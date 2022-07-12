import Data.Char

noSpace :: String -> String
noSpace = filter (not.isSpace)
