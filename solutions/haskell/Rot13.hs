import Data.Char
import Data.List

rotchar :: Char -> Char
rotchar c
    | length (find (==c) ['a'..'z']) > 0 = rot c 'a'
    | length (find (==c) ['A'..'Z']) > 0 = rot c 'A'
    | otherwise             = c
    where rot c a = if (((ord c) - (ord a) + 13) < 26) then (chr ((ord c) + 13)) else (chr ((ord c) - 13))

rot13 :: String -> String
rot13 s = map rotchar s
