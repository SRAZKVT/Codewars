import Prelude hiding (dropWhile, span, break)

dropWhile :: [a] -> (a -> Bool) -> [a]
dropWhile xs p = if length xs > 0 then (if p $ head xs then (dropWhile (tail xs) p) else xs) else []
