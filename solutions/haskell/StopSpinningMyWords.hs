import Data.List

spinWords :: String -> String
spinWords str = intercalate " " (map (reverseIfNeeded) (words str))
    where reverseIfNeeded str = if (length str) < 5 then str else (reverse str)
