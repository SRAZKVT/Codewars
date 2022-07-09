solution :: Integer -> Integer
solution number = if number < 0 then 0 else (foldr1 (+) (filter (\n -> (n `mod` 3 == 0) || (n `mod` 5 == 0)) [1..(number - 1)]))
