diferenciaConSig :: [Int] -> [Int]
diferenciaConSig [] = []
diferenciaConSig xs = do
    let resultado = zipWith (-) (tail xs) xs
    let resultadoNegativo = [ negate x | x <- resultado ]
    resultadoNegativo
