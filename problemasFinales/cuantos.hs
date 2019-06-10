cuantos :: Int -> String -> String
cuantos n xs = concat (map (replicate n) xs)