import Data.Word  (Word32)
import Data.Bits
import Data.List

type IPString = String

getBytesStrings :: Word32 -> [String]
getBytesStrings n = [(getStr 24), (getStr 16), (getStr 8), (getStr 0)]
    where getStr x = (show ((n `shiftR` x) .&. 0xFF))

word32ToIP :: Word32 -> IPString
word32ToIP word32 = intercalate "." (getBytesStrings word32)
