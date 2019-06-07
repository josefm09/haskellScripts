import System.IO.Unsafe
import System.Random
import Data.List 

hazPares :: [Int] -> [Int]
hazPares (x:xs)
 | x `mod` 2 == 0 = (x:hazPares xs)
 | otherwise = (x+1:hazPares xs)

adivina = do

    -- Generamos los numeros aleatorios
    a <- randomRIO(1, 40 ::Int)
    b <- randomRIO(1, 40 ::Int)
    c <- randomRIO(1, 40) 
    d <- randomRIO(1, 40)
    e <- randomRIO(1, 40)
    f <- randomRIO(1, 40)
    h <- randomRIO(1, 40)
    j <- randomRIO(1, 40)
    k <- randomRIO(1, 40)
    u <- randomRIO(1, 40)
    t <- randomRIO(1, 40)
    p <- randomRIO(1, 40)
    q <- randomRIO(1, 40)
    r <- randomRIO(1, 40)
    z <- randomRIO(1, 40)
	
    -- los guardamos en una lista
	--let numbers = a:[ b, c, d]
    let numbers = take 5(nub (a:[ b, c, d,e,f,h,j,k,u,t,p,q,r,z]))
    let numbersPares = [ if odd x then x+1 else x | x <- numbers]
    print numbersPares
	--print " "