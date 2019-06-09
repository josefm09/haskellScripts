checaPares :: [Int] -> Bool
checaPares xs = do
    let respuestaArreglo = [ if even x then True else False | x <- xs ]
    if all (== False) respuestaArreglo
        then False 
        else True