fibonacci :: Int -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = ((fibs !! (n - 1)) + fibs !! (n - 2))

fibs = map fibonacci [0..]

