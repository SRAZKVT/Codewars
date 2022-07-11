import Data.Char

amtOcc :: (Eq a) => a -> [a] -> Int
amtOcc n l
    | length l == 0 = 0
    | otherwise = (if l !! 0 == n then 1 else 0) + amtOcc n (tail l)

xo :: String -> Bool
xo str = let l = (map (toLower) str) in (==) (amtOcc 'x' l) (amtOcc 'o' l)
