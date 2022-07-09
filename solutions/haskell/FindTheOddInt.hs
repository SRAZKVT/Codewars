import Data.List

amtOcc :: Int -> [Int] -> Int
amtOcc n l
    | length l == 0 = 0
    | otherwise = (if l !! 0 == n then 1 else 0) + amtOcc n (tail l)

findOdd :: [Int] -> Int
findOdd xs = (filter (\n -> amtOcc n xs `mod` 2 == 1) xs) !! 0
