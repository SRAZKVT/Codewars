isPrime :: Int -> Bool
isPrime n
    | n < 2 = False
    | otherwise = checkIsPrime n 0
    where checkIsPrime n x = (n == 2) || ((primes !! x) > (n `div` 2))
              || (n `mod` (primes !! x) /= 0) && checkIsPrime n (x + 1)

primes = filter isPrime (2:[3,5..])
                  
countKprimes :: Int -> Int -> Int -> [Int]
countKprimes k start end = filter (\x -> k == kPrimality x 0) [start..end]
    where kPrimality :: Int -> Int -> Int
          kPrimality x n
              | x == 1           = 0
              | x `rem` nth == 0 = 1 + kPrimality (x `div` nth) n
              | otherwise        = kPrimality x (n + 1)
              where nth = primes !! n

puzzle :: Int -> Int
puzzle s = length (filter (\l -> sum l == s) [[a,b,c] | a <- getkPrimes 1, b <- getkPrimes 3, c <- getkPrimes 7])
    where getkPrimes x = countKprimes x 2 s
