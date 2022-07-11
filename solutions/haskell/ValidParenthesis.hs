import Data.Text

replaceStr :: String -> String -> String -> String
replaceStr a b c = unpack (replace (pack a) (pack b) (pack c))

validParentheses :: String -> Bool
validParentheses n
    | n == ""                         = True
    | n == (replaceStr ("()") ("") n) = False
    | otherwise                       = validParentheses (replaceStr ("()") ("") n)
