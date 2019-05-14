Type Nombre = String
Type Telefono = Int
Type Persona = (Nombre,Telefono)
Type Agenda = [Persona]

agenda :: Agenda
agenda = [("Hugo", "11"), ("Paco", "12"), ("Luis", "13")]
    
main = do
    putStrLn ("Cual es tu nombre? ")
    name <- getLine
    putStrLn ("Cual es tu telefono?")
    phone <- getLine
    if estaRegistrado (name, phone)
        then putStrLn ("Ya estas")
        else do
            putStrLn ("No estas")
            agregar (name, phone)

agregar = undefined 

estaRegistrado :: Persona -> Bool
estaRegistrado p = elem p agenda
    