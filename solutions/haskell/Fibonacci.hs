fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = ((fibonacci !! (n - 1)) + fibonacci !! (n - 2))

fibonacci = map fib [0..]
