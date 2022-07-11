basicOp :: Char -> Int -> Int -> Int
basicOp c x y
    | c == '+' = x + y
    | c == '-' = x - y
    | c == '*' = x * y
    | c == '/' = x `div` y
