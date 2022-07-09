import Data.Bits

countBits :: Int -> Int
countBits n = if n == 0 then 0 else (countBits (n `shiftR` 1) + (n .&. 1))
