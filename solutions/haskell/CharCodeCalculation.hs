import Data.Char

calc :: String -> Int
calc x = (sum (map digitToInt(concat (map show (map ord x))))) - (sum (map (\e -> if (e == 7) then 1 else e) (map digitToInt(concat (map show (map ord x))))))
