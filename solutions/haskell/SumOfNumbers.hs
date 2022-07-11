getSum :: Int -> Int -> Int
getSum a b = if a < b then sum [a..b] else sum [b..a]
