import Data.List

toBrainfuck :: String -> String
toBrainfuck s = concat $ map (\x -> replicate x '+' ++ ".[-]") (map (fromEnum) s)
