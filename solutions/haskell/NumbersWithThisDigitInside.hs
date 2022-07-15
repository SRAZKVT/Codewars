import Data.Char

numbersWithDigitInside :: Int -> Int -> [Int]
numbersWithDigitInside x d = [(length ls),sum ls,if null ls then 0 else product ls]
    where ls = (filter (\n -> intToDigit(d) `elem` show n) ([1..x]))
