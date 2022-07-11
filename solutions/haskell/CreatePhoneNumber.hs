createPhoneNumber :: [Int] -> String
createPhoneNumber l = "(" ++ get 0 ++ get 1 ++ get 2 ++ ") " ++ get 3 ++ get 4 ++ get 5 ++ "-" ++ get 6 ++ get 7 ++ get 8 ++ get 9
    where get n = show (l !! n)
