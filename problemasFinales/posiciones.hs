import System.Random
import Data.List 

main = do
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
	
    let numeros = take 4(nub (a:[ b, c, d,e,f,h,j,k,u,t,p,q,r,z]))
  
    inicia numeros
    print ""


correcto :: [Int] -> [Int] -> [String]
correcto xs ys = [ validar x y | (x,y) <- zip xs ys ]
    where validar x y    | x == y = "V"
                        | otherwise = "X"

desordenada :: [Int] -> [Int] -> [String]
desordenada xs ys = [ validar x | x <- ys ]
    where validar x      | x `elem` xs = "A"
                        | otherwise = "R"

inicia numeros = do
    putStr "Dame el primer numero: "
    e <- readLn :: IO Int
    putStr "Dame el segundo numero: "
    f <- readLn :: IO Int
    putStr "Dame el tercer numero: "
    g <- readLn :: IO Int
    putStr "Dame el tercer numero: "
    h <- readLn :: IO Int

    let numeros2= e:[f,g,h]

    let m = correcto numeros numeros2
    let borraCorrectas = [ x | x <- m , x /= "X" ]
    let longitudCorrectas = length borraCorrectas

    let l = desordenada numeros numeros2
    let desordenadasOrdenadas = drop longitudCorrectas (sort l)

    let resultado = borraCorrectas ++ desordenadasOrdenadas
    print resultado

    if longitudCorrectas /= 4
        then inicia numeros
        else print "Felicidades!! Ganaste!!"