import Data.Char

squareDigit :: Int -> Int
squareDigit n = read $ concat (map (show) (map (^2) (map (digitToInt) (filter isDigit(show n))))) :: Int
