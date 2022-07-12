import Data.Char

toCamelCase :: String -> String
toCamelCase str
    | null str = []
    | length str == 1 && head str `elem` "-_" = []
    | head str `elem` "-_" = if (head (tail str)) `notElem` "-_" then (toUpper (head (tail str))):toCamelCase (tail (tail str)) else toCamelCase $ tail str
    | otherwise = concat [[head str],toCamelCase $ tail str]
