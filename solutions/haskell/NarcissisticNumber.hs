import Data.Char

narcissistic :: Integer -> Bool
narcissistic x = let s = length (show x) in x == toInteger (sum (map (^s) (map (digitToInt) (show x))))
