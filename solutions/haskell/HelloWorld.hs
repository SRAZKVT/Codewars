import Data.Char
import Data.List

getFirst3 :: [a] -> [a]
getFirst3 (x:y:z:xs) = [x,y,z]
getFirst3 (x:y:xs) = [x,y]
getFirst3 (x:xs) = [x]
getFirst3 [] = []

evaluatesNumbers :: Integer -> [String]
evaluatesNumbers 0 = []
evaluatesNumbers n = [(getFirst3(reverse $ show n))] ++ evaluatesNumbers (read (head $ tails (show (n `div` 1000))) :: Integer)

greet :: String
greet = map (chr) (map (read) (map (reverse) (evaluatesNumbers 33100108114111119032111108108101104)))
