import Data.Char

fakeBin :: String -> String
fakeBin xs = map intToDigit (map (\x -> if x < 5 then 0 else 1) (map digitToInt xs))
