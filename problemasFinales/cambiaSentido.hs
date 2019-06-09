cambiaSentido :: Ord a => [a] -> Maybe [a]
cambiaSentido xs =
    if or (checkListAsc xs, checkListDes xs) 
        then Nothing 
        else do Just xs

checkListAsc :: (Ord a) => [a] -> Bool
checkListAsc [] = True
checkListAsc [x] = True
checkListAsc (x:y:xs) = x < y && checkListAsc (y:xs)

checkListDes :: (Ord a) => [a] -> Bool
checkListDes [] = True
checkListDes [x] = True
checkListDes (x:y:xs) = x >= y && checkListDes (y:xs)
