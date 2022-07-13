calc :: Int -> Int -> Double -> Int -> Double-> Int
calc card ticket perc n cache = if (calcCard >= calcTicket) then (calc card ticket perc (n + 1) (cache + cardTicketCalc n)) else n
    where calcTicket = ticket * n
          calcCard = ceiling (fromIntegral card + (cache + (cardTicketCalc n)))
          cardTicketCalc x = fromIntegral ticket * (perc^x)

movie :: Int -> Int -> Double -> Int
movie card ticket perc = calc card ticket perc 1 0.0
