isSquare :: Integral n => n -> Bool
isSquare n = n == (^2) (round $ sqrt (fromIntegral n))
