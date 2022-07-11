import Data.Type

digitize :: Int -> [Int]
digitize s = reverse (map digitToInt $ show s)
