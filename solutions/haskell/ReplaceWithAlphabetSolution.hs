import Data.Char

alphabetPosition :: String -> String
alphabetPosition n = unwords (map (show) (filter (\x -> x >= 1 && x <= 26) (map (\x -> (ord x) - (ord 'a') + 1) (map (toLower) n))))
