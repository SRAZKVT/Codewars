import Data.List

getNb :: String -> [Int]
getNb s = map (\x -> read x :: Int) (words s)

highAndLow :: String -> String
highAndLow input = unwords [show $ maximum (getNb input), show $ minimum (getNb input)]
