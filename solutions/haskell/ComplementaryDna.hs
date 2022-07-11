-- data Base = A | T | G | C
type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand n
    | length n == 0 = []
    | dna == A      = putDna T
    | dna == T      = putDna A
    | dna == G      = putDna C
    | dna == C      = putDna G
    where dna = head n
          putDna t = [t] ++ dnaStrand (tail n)
