miroDoble :: [Int] -> [Int]
miroDoble [] = []
miroDoble (x:xs) = [x,x] ++ miroDoble xs  