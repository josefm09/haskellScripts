mayoresA :: Ord a => [a] -> [(a,Int)]
mayoresA [] = []
mayoresA xs = [ verifica x | x <- xs ]
    where verifica y = ( y, length (filter (>y) xs ))