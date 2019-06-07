cambiaSentido :: Ord a => [a] -> Maybe a
cambiaSentido xs =
    if or (checkList xs, checkList2 xs) 
        then Nothing 
        else do let x = head xs
                Just x

checkList :: (Ord a) => [a] -> Bool
checkList [] = True
checkList [x] = True
checkList (x:y:xs) = x <= y && checkList (y:xs)

checkList2 :: (Ord a) => [a] -> Bool
checkList2 [] = True
checkList2 [x] = True
checkList2 (x:y:xs) = x >= y && checkList2 (y:xs)
