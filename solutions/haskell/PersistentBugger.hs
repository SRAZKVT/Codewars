import Data.Char

persistence :: Int -> Int
persistence n = if length (show n) == 1 then 0 else persistence (foldl1 (*) (map (digitToInt) (show n))) + 1
