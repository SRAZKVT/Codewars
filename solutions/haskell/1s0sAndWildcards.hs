import Data.Char
import Data.Bits

getBin :: Int -> String
getBin n = reverse (binRepr n)
    where binRepr x = if x == 0 then [] else (intToDigit (x `mod` 2)):(binRepr (x `div` 2))

fillList :: String -> Int -> String
fillList s 0 = s
fillList s n = '0':(fillList s (n - 1))

isValid :: String -> String -> Bool
isValid s p
    | (length p) == 0 = True
    | head p == '?'   = checkNext
    | otherwise       = if (head s) == (head p) then checkNext else False
    where checkNext = (isValid (tail s) (tail p))

possibilities :: String -> [String]
possibilities param = filter (\s -> isValid s param) (map (\s -> fillList s ((length param) - (length s))) (map (getBin) [0..((2 `shiftL` (length param)) - 1)]))
