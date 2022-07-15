import Data.Text.Internal.Read

hexToDec :: String -> Int
hexToDec "" = 0
hexToDec s = (hexDigitToInt $ last s) + (hexToDec $ init s) * 16
