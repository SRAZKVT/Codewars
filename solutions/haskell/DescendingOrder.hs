import Data.Char
import Data.List

descendingOrder :: Integer -> Integer
descendingOrder n = read $ concat (map (show) (reverse (sort (map (digitToInt) (show n))))) :: Integer
