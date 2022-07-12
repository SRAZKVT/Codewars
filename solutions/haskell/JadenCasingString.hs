import Data.Char

toJadenCase :: String -> String
toJadenCase s = unwords . map (\(x:xs) -> toUpper x:xs) $ words s
