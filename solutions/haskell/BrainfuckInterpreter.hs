import Data.Bits
import Data.Char

brainfuck :: String -> String -> String
brainfuck code input = interpret input (replicate 32678 0) 0 0 []
    where interpret :: String -> [Int] -> Int -> Int -> [Int] -> String
          interpret input tape codePointer tapePointer callStack
              | codePointer == length code = ""
              | is '+' = interpret input (setTapeCell ((tape !! tapePointer) + 1)) (codePointer + 1) tapePointer callStack
              | is '-' = interpret input (setTapeCell ((tape !! tapePointer) - 1)) (codePointer + 1) tapePointer callStack
              | is '<' = interpret input tape (codePointer + 1) ((tapePointer - 1) .&. 0x7fff) callStack
              | is '>' = interpret input tape (codePointer + 1) ((tapePointer + 1) .&. 0x7fff) callStack
              | is ',' = interpret (tail input) (setTapeCell (ord $ head input)) (codePointer + 1) tapePointer callStack
              | is '.' = (chr (tape !! tapePointer)) : interpret input tape (codePointer + 1) tapePointer callStack
              | is '[' = if tape !! tapePointer /= 0
                         then interpret input tape (codePointer + 1) tapePointer (codePointer:callStack)
                         else interpret input tape (getCorrespondingBracket 1 0) tapePointer callStack
              | is ']' = interpret input tape (head callStack) tapePointer (tail callStack)
              | otherwise = interpret input tape (codePointer + 1) tapePointer callStack
                  where is c = code !! codePointer == c
                        setTapeCell x = tapeHead ++ x .&. 0xff : tapeTail
                            where tapeHead = take tapePointer tape
                                  tapeTail = drop (tapePointer + 1) tape
                        getCorrespondingBracket :: Int -> Int -> Int
                        getCorrespondingBracket offset depth
                            | code !! (codePointer + offset) == '[' = getCorrespondingBracket (offset + 1) (depth + 1)
                            | code !! (codePointer + offset) == ']' = if depth == 0
                                                                      then codePointer + offset + 1
                                                                      else getCorrespondingBracket (offset + 1) (depth - 1)
                            | otherwise = getCorrespondingBracket (offset + 1) (depth)
