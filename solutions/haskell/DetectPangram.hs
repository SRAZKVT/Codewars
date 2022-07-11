import Data.Char
import Data.List

isPangram :: String -> Bool
isPangram str = sort (filter isLetter $ nub (map toLower str)) == ['a'..'z']
