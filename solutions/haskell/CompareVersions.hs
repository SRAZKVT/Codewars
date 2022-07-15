compareVersions :: String -> String -> Ordering
compareVersions version1 version2 = check (getVersions version1) (getVersions version2)
    where getVersions :: String -> [Int]
          getVersions s = map read (words (map (\c -> if c == '.' then ' ' else c) s))
          check :: [Int] -> [Int] -> Ordering
          check f s
              | null f && null s = EQ
              | null f = LT
              | null s = GT
              | head f == head s = check (tail f) (tail s)
              | head f > head s = GT
              | head f < head s = LT
              | otherwise = error "Unreachable"
