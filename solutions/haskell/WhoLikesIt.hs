import Data.List

ppl :: [String] -> String
ppl l
	| amt == 0  = "no one"
    | amt == 1  = head l
    | amt == 2  = intercalate " and " l
    | amt == 3  = intercalate ", " [head l, likes $ tail l]
    | otherwise = (l !! 0) ++ ", " ++ (l !! 1) ++ " and " ++ (show ((length l) - 2)) ++ " others"
    where amt = length l


likes :: [String] -> String
likes l = ppl l ++ if length l < 2 then " likes this" else " like this"
