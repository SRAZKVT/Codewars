isDivisible :: Int -> Int -> Int -> Bool
isDivisible n x y = n `mod` x == 0 && n `mod` y == 0
