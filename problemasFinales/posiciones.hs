import System.Random
import Data.List 

buscaVerdes :: [Int] -> [Int] -> [String]
buscaVerdes xs ys = [ valida x y | (x,y) <- zip xs ys ]
    where valida x y    | x == y = "V"
                        | otherwise = "X"

buscaAmarillas :: [Int] -> [Int] -> [String]
buscaAmarillas xs ys = [ valida x | x <- ys ]
    where valida x      | x `elem` xs = "A"
                        | otherwise = "R"

--main :: IO()
adivina = do

    -- Generamos los numeros aleatorios
    a <- randomRIO(1, 6 ::Int)
    b <- randomRIO(1, 6 ::Int)
    c <- randomRIO(1, 6) 
    d <- randomRIO(1, 6)
    e <- randomRIO(1, 6)
    f <- randomRIO(1, 6)
    h <- randomRIO(1, 6)
    j <- randomRIO(1, 6)
    k <- randomRIO(1, 6)
    u <- randomRIO(1, 6)
    t <- randomRIO(1, 6)
    p <- randomRIO(1, 6)
    q <- randomRIO(1, 6)
    r <- randomRIO(1, 6)
    z <- randomRIO(1, 6)
	
    -- los guardamos en una lista
	--let numbers = a:[ b, c, d]
    let numbers = take 4(nub (a:[ b, c, d,e,f,h,j,k,u,t,p,q,r,z]))
  
-----------------------------------
    pideNumeros numbers
    print ""

pideNumeros numbers = do
    putStr "Escribe un numero: "
    e <- readLn :: IO Int
    putStr "Escribe un numero: "
    f <- readLn :: IO Int
    putStr "Escribe un numero: "
    g <- readLn :: IO Int
    putStr "Escribe un numero: "
    h <- readLn :: IO Int

    let numbers2= e:[f,g,h]
    
    --print numbers
    -- print numbers2

    let m = buscaVerdes numbers numbers2
    let borraXVerdes = [ x | x <- m , x /= "X" ]
    let longitudVerdes = length borraXVerdes

    let l = buscaAmarillas numbers numbers2
    let listaAmarillasOrdenadas = drop longitudVerdes (sort l)

    let resultado = borraXVerdes ++ listaAmarillasOrdenadas
    print resultado

    if longitudVerdes /= 4
        then pideNumeros numbers
        else print "Felicidades, has ganado un 70 en la materia de PROLOG, PORFI PROFE :C"