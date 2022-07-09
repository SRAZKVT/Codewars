import Data.List

amtOcc :: Int -> [Int] -> Int
amtOcc n l
    | length l == 0 = 0
    | otherwise = (if l !! 0 == n then 1 else 0) + amtOcc n (tail l)
        

getUnique :: [Int] -> Int
getUnique l = if head (map (\n -> amtOcc n l) (nub l)) > 1 then (nub l) !! 1 else head (nub l)
