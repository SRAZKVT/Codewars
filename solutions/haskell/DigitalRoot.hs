import Data.Char

digitalRoot :: Integer -> Integer
digitalRoot n = if (length $ show n) == 1 then n else digitalRoot $ toInteger $ sum $ map (digitToInt) (show $ fromIntegral n)
