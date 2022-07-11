import Data.Set
import Data.Char

isIsogram :: String -> Bool
isIsogram s = length s == length (fromList (Prelude.map (toLower) s))
