--si se quisiera la suma de los numeros primos
--primosSumaDe2Cuadrados1 :: [Integer]
--primosSumaDe2Cuadrados1 =
--    [n | n <- primes,
--         esSumaDe2Cuadrados n]

sumas2cuadrados :: Integer -> [(Integer,Integer)]
sumas2cuadrados n = 
    [(x,y) | x <- [1..ceiling (sqrt (fromIntegral n))],
             let z = n - x^2,
             esCuadrado z, 
             let y = raiz z,
             x >= y]

-- (esCuadrado x) se verifica si x es un número al cuadrado. Por
-- ejemplo,
--    esCuadrado 25  ==  True
--    esCuadrado 26  ==  False
esCuadrado :: Integer -> Bool
esCuadrado x = x == y * y
    where y = raiz x
 
-- (raiz x) es la raíz cuadrada entera de x. Por ejemplo,
--    raiz 25  ==  5
--    raiz 24  ==  4
--    raiz 26  ==  5
raiz :: Integer -> Integer
raiz x = floor (sqrt (fromIntegral x))