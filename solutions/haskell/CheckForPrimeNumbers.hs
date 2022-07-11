isPrime :: Int -> Bool
isPrime n
    | n < 2 = False
    | otherwise = checkIsPrime n 0
    where checkIsPrime n x = if (n == 2) || ((primes !! x) > (n `div` 2)) then True else (not (n `mod` (primes !! x) == 0)) && (checkIsPrime n (x + 1))

primes = filter (isPrime) [2..]
