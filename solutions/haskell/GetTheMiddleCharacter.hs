getMiddle :: String -> String
getMiddle s = if odd $ length s then [s !! ((length s) `div` 2)] else [s !! (((length s) `div` 2) - 1),s !! ((length s) `div` 2)]
