import Debug.Trace

calc :: Int -> Int -> Double -> Int -> Int
calc card ticket perc n = if (calcCard > calcTicket) then (calc card ticket perc (n + 1)) else n
    where calcTicket = ticket * n
          calcCard = ceiling (fromIntegral card + (cardTicketCalc n))
          cardTicketCalc 0 = 0
          cardTicketCalc x = fromIntegral ticket * (perc^x) + cardTicketCalc (x - 1)

movie :: Int -> Int -> Double -> Int
movie card ticket perc = (traceShow [show card,show ticket,show perc]) calc card ticket perc 1
