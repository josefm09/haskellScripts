import Data.List
import Data.Function

comun :: [[Int]] -> [Int]
comun xss = do
    let listaGeneral = concat xss
    [masComun listaGeneral]     

masComun :: Ord a => [a] -> a
masComun = snd . maximum . map (\xs -> (length xs, head xs)) . group . sort
