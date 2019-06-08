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
    let resultado = reparte listaJugadores
    print resultado

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

--todoIgual :: [Int] -> Bool
--todoIgual [] = True
--todoIgual (h:t) = todoIgual (Just h)
--todoIgual (Just e)
--	| h == e = todoIgual (Just e)
 --   | True = False

todoIgual :: Eq a => [a] -> Bool
todoIgual []     = True
todoIgual (x:xs) = all (== x) xs
    
reparte :: [(Integer,Int)] -> [Int]
reparte listaJugadores = do
    let residuo = aplausos listaJugadores
    let ordenada = finalACabeza residuo
    let listaSuma = sumaListas residuo ordenada

    show residuo
    show ordenada
    show listaSuma
    let repartido = [ (x,y) | (x,y) <- zip [1..] listaSuma]
    if todoIgual listaSuma == False
        then reparte repartido
        else listaSuma