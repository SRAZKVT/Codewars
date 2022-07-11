correct :: String -> String
correct = let
                repl '5' = 'S'
                repl '0' = 'O'
                repl '1' = 'I'
                repl c   = c
            in map $ repl
