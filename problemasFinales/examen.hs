import Data.List
import Text.Read

main = do
    
    numeros <- obtenerInputs
    print numeros

    numeros2 <- obtenerInputs
    print numeros2

    let resultado = procesoMultiplica numeros2 numeros

    print resultado

procesoMultiplica :: [Int] -> [Int] -> [Int]
procesoMultiplica xs ys = do 
    let aux = multiplicaListas xs ys
    let resultado = [ sum x | x <- aux ]
    resultado

multiplicaValor :: Int -> [Int] -> [Int]
multiplicaValor n list = [ x * n | x <- list ]

multiplicaListas :: [Int] -> [Int] -> [[Int]]
multiplicaListas list1 list2 = [ multiplicaValor x list2 | x <- list1 ]

parseInput :: String -> Maybe Int
parseInput input = if input == "fin" then Nothing else (readMaybe input):: Maybe Int

obtenerInputs :: IO [Int]
obtenerInputs = do
    input <- getLine
    case parseInput input of 
        Nothing -> return []
        Just anInt -> do
            masInputs <- obtenerInputs
            return (anInt : masInputs)
                