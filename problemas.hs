-- ---------------------------------------------------------------------

-- Ejercicio 1. Definir, por comprensión, la función

--    sumaDeCuadrados :: Integer -> Integer

-- tal que (sumaDeCuadrados n) es la suma de los cuadrados de los

-- primeros n números; es decir, 1^2 + 2^2 + ... + n^2. Por ejemplo,

--    sumaDeCuadrados 3    ==  14

--    sumaDeCuadrados 100  ==  338350

-- ---------------------------------------------------------------------

 

sumaDeCuadrados :: Integer -> Integer
sumaDeCuadrados 0 = 0
sumaDeCuadrados x = x^2 + sumaDeCuadrados x - 1

main = do
    putStrLn (sumaDeCuadrados 3)
 

-- ---------------------------------------------------------------------

-- Ejercicio 2. Definir por comprensión la función

--    replica :: Int -> a -> [a]

-- tal que (replica n x) es la lista formada por n copias del elemento

-- x. Por ejemplo, 

--    replica 3 True  ==  [True, True, True]

-- Nota: La función replica es equivalente a la predefinida replicate.

-- ---------------------------------------------------------------------

 

--replica :: Int -> a -> [a]

 

-- ---------------------------------------------------------------------

-- Ejercicio 3. Una terna (x,y,z) de enteros positivos es pitagórica

-- si x^2 + y^2 = z^2. Usando una lista por comprensión, definir la

-- función 

--    pitagoricas :: Int -> [(Int,Int,Int)]

-- tal que (pitagoricas n) es la lista de todas las ternas pitagóricas

-- cuyas componentes están entre 1 y n. Por ejemplo, 

--    pitagoricas 10  ==  [(3,4,5),(4,3,5),(6,8,10),(8,6,10)]

-- ---------------------------------------------------------------------

 

--pitagoricas :: Int -> [(Int,Int,Int)]

 

-- ---------------------------------------------------------------------

-- Definir la función 

--    numeroDePares :: (Int,Int,Int) -> Int

-- tal que (numeroDePares t) es el número de elementos pares de la terna

-- t. Por ejemplo,

--    numeroDePares (3,5,7)  ==  0

--    numeroDePares (3,6,7)  ==  1

--    numeroDePares (3,6,4)  ==  2

--    numeroDePares (4,6,4)  ==  3

-- ---------------------------------------------------------------------

 

--numeroDePares :: (Int,Int,Int) -> Int

 


 

-- ---------------------------------------------------------------------

-- Ejercicio 4. Un entero positivo es perfecto si es igual a la suma de

-- sus factores, excluyendo el propio número. 

-- 

-- Definir por comprensión la función 

--    perfectos :: Int -> [Int]

-- tal que (perfectos n) es la lista de todos los números perfectos

-- menores que n. Por ejemplo, 

--    perfectos 500  ==  [6,28,496]

-- Indicación: Usar la función factores del tema 5.

-- ---------------------------------------------------------------------

 

-- La función factores del tema es

--factores :: Int -> [Int]

--factores n = [x | x <- [1..n], n `mod` x == 0]

 

-- La definición es

--perfectos :: Int -> [Int]

 

 

-- ---------------------------------------------------------------------

-- Ejercicio 6. Definir la función 

--    posiciones :: Eq a => a -> [a] -> [Int]

-- tal que (posiciones x xs) es la lista de las posiciones ocupadas por

-- el elemento x en la lista xs. Por ejemplo,

--    posiciones 5 [1,5,3,5,5,7]  ==  [1,3,4]

-- ---------------------------------------------------------------------

 

-- La definición de posiciones es

--posiciones :: Eq a => a -> [a] -> [Int]


-- ---------------------------------------------------------------------

-- Ejercicio 7. El producto escalar de dos listas de enteros xs y ys de

-- longitud n viene dado por la suma de los productos de los elementos

-- correspondientes. 

-- 

-- Definir por comprensión la función 

--    productoEscalar :: [Int] -> [Int] -> Int

-- tal que (productoEscalar xs ys) es el producto escalar de las listas

-- xs e ys. Por ejemplo,

--    productoEscalar [1,2,3] [4,5,6]  ==  32

--

-- 1*4 + 2*5 + 3*6

-- ---------------------------------------------------------------------

 

--productoEscalar :: [Int] -> [Int] -> Int

 

-- ---------------------------------------------------------------------

-- Ejercicio 8 (Problema 1 del proyecto Euler) Definir la función

--    euler1 :: Integer -> Integer

-- (euler1 n) es la suma de todos los múltiplos de 3 ó 5 menores que

-- n. Por ejemplo,

--    euler1 10  ==  23

-- 

-- Calcular la suma de todos los múltiplos de 3 ó 5 menores que 1000.

-- ---------------------------------------------------------------------

 

--euler1 :: Integer -> Integer


 

-- Cálculo:

--    ghci> euler1 1000

--    233168


