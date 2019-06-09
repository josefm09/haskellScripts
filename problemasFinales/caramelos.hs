import System.Random
import System.IO.Unsafe

listaAleatoria :: Int -> IO ([Int])
listaAleatoria 0 = return []
listaAleatoria n = do
    r  <- randomRIO(0,40) :: IO Int
    rs <- listaAleatoria (n-1)
    return (r:rs)

listaAleatoriaInteger n = unsafePerformIO $ (listaAleatoria n)

main = do
    putStrLn "Introduzca el numero de jugadores"
    nJugadores <- getLine
    let jugadores = (read :: String -> Int) nJugadores
    let dulcesRandom = listaAleatoriaInteger jugadores
    let dulcesPares = [ if odd x then x+1 else x | x <- dulcesRandom]
    let listaJugadores = [ (x,y) | (x,y) <- zip [1..] dulcesPares]
    
    let residuo = aplausos listaJugadores
    let ordenada = finalACabeza residuo
    let listaSuma = sumaListas residuo ordenada

    reparte listaSuma

aplausos listaJugadores = [ verifica (snd x) | x <- listaJugadores]
    where verifica y    | (y `div` 2) `mod` 2 == 0 = y `div` 2
                        | otherwise = (y `div` 2) + 1

cabezaAlFinal :: [Int] -> [Int]
cabezaAlFinal x = tail x ++ [head x]

finalACabeza :: [Int] -> [Int]
finalACabeza [] = []
finalACabeza xs = last xs : init xs

sumaListas ::  [Int] -> [Int] -> [Int]
sumaListas lista1 lista2 = zipWith (+) lista1 lista2

todoIgual :: Eq a => [a] -> Bool
todoIgual []     = True
todoIgual (x:xs) = all (== x) xs
    
reparte :: [Int] -> [Int]
reparte listaJugadores = do
    let residuo = aplausos listaJugadores
    let ordenada = finalACabeza residuo
    let listaSuma2 = sumaListas residuo ordenada

    print listaSuma2
    if todoIgual listaSuma2 == False
        then reparte repartido
        else listaSuma2 