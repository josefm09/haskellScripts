--1
puntosGanados :: Char -> Char -> (Int,Int)
puntosGanados x y 
    | x == 'C' && y == 'C' = (1,1)
    | x == 'C' && y == 'D' = (5,0)
    | x == 'D' && y == 'C' = (6,5)
    | x == 'D' && y == 'D' = (3,3)

--2
unirListas :: [Char] -> [Char] -> [(Char,Char)]
unirListas xs [] = []
unirListas [] ys = []
unirListas (x:xs) (y:ys) = (x,y) : unirListas xs ys

--3
gastoEnDulces :: [(Char,Char)] -> [(Int,Int)]
gastoEnDulces x = [ verifica(x) | x <- x]
    where verifica x    | fst x == 'C' && snd x == 'C' = (1,1)
                        | fst x == 'C' && snd x == 'D' = (5,0)
                        | fst x == 'D' && snd x == 'C' = (0,5)
                        | fst x == 'D' && snd x == 'D' = (3,3)
--4
gastosPersonales :: [(Int,Int)]  -> ([Int], [Int])
gastosPersonales = foldr (\x acc -> (fst x:fst acc, snd x:snd acc)) ([],[])
--5
sumarCobros :: [Int]  -> Int
sumarCobros xs = sum xs 
--6
todasLasCompras :: [Int]  -> [Int]  -> String
todasLasCompras xs ys =  
    if sumarCobros xs > sumarCobros ys
        then "El ninio ganador es el 1"
        else "El ninio ganador es el 2"


--main = do
--    puntosGanados 'C' 'D'
 --   unirListas ['C','C','D','D'] ['D','D','C','D']
   -- gastoEnDulces [('C','D') ('D','C')]
    --gastosPersonales [(1,5,3,0) (3,0,3,5)]
    --let sumaCobros = sumarCobros [1,5,3,0]
    --let sumaCobros2 = sumarCobros [3,0,3,5]
   -- todasLasCompras [1,5,3,0] [3,0,3,5]
-- EL 7 NOS LO REGALÓ
--jugar = do 
--    putStrLn "Introduzca la eleccion del ninio 1"
--    elecciona <- getLine
--    let eleccion1 = (read :: String -> Char) elecciona
--    puttrLn "Introduzca la eleccion del ninio 2"
--    eleccionb <- getLine
--    let eleccion2 = (read :: String -> Char) eleccionb
--    putStrLn "Introduzca la eleccion del ninio 1 en la segunda tienda"
--    eleccionc <- getLine
--    let eleccion3 = (read :: String -> Char) eleccionc
--    putStrLn "Introduzca la eleccion del ninio 2 en la segunda tienda"
--    elecciond <- getLine
--    let eleccion4 = (read :: String -> Char) elecciond
--    let listasUnidas = unirListas [eleccion1,eleccion2] [eleccion3,eleccion4]
--    let 