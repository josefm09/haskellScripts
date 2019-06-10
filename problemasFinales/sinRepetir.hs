
sinRepetir :: [(Int,Int)] -> [Int]
sinRepetir xs = [ verifica x | x <- xs ]  
    where verifica x = \x acc -> (fst x:fst acc, snd x:snd acc)