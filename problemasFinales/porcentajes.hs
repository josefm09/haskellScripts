porcentaje :: [Double] -> [Double]
porcentaje listaPorcentajes = [ verifica x | x <- listaPorcentajes]
    where verifica x = (x*100/(sum listaPorcentajes))