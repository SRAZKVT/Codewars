number :: [(Int, Int)] -> Int
number xs = get xs 0
    where get [] n = n
          get l n  = get (tail l) (n + comingIn - comingOut)
              where comingIn  = fst $ head l
                    comingOut = snd $ head l
