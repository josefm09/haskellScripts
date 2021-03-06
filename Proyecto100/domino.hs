import NumeroRandom

-- Lista de las 28 fichas del juego
fichas :: [[Int]]
fichas = [ [x,y] | x<-[0..6] , y<-[x..6] ]

-- Lista de randoms para seleccionar fichas para el jugador 1
random1 :: [[Int]]
random1 = [[a],[b],[c],[d],[e],[f],[g]]

-- Lista de randoms para seleccionar fichas para el jugador 2
random2 :: [[Int]]
random2 = [[h],[i],[j],[k],[l],[m],[n]]

-- Fichas del jugador 1
jugador1 :: [[Int]]
jugador1 = []

-- Fichas del jugador 2
jugador2 :: [[Int]]
jugador2 = []

-- Función principal del programa
main = do
    putStrLn "Inicia reparto de fichas"
    let spmt = func 0 random1
    -- let fichasUno = reparteFichas random1
    -- let fichasDos = reparteFichas random2
    -- print fichasUno
    -- print fichasDos
    putStrLn "Fin"
        -- putStrLn . show =<< rand


reparteFichas :: Int -> [[Int]] -> [[Int]]
reparteFichas i rand = [  fichas!!xs  | xs <- rand!!i ] 

func i xs =
    if i < 7
        then do
            let ficha = reparteFichas i xs
            let fichaRes = concat ficha 
            let lista = sacaFicha fichaRes fichas
            func (i+1) lista
        else 
            i

sacaFicha :: [Int] -> [[Int]] -> [[Int]]
sacaFicha _ [] = []
sacaFicha x (y:ys)  | x ==  y = sacaFicha x ys
                    | otherwise = y : sacaFicha x ys
        
--Hacer un metodo toma y elimina, toma y elimina

{-
where removeItem x (y:ys)
                | y == [] = []
                | x == y = removeItem x ys
                | otherwise = y : removeItem x ys
-}