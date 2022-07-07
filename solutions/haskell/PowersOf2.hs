powersOfTwo :: Int -> [Integer]
powersOfTwo n = take (n + 1) (map (2^) [0..])
