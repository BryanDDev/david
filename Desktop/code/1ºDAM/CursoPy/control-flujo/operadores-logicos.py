#and, or, not

gas = True
encendido = True
if gas and encendido:
    print("puedes avanzar")
    
gas = False
gasolina = True
if gas or gasolina:
    print("Tienes combustible")
    
llaves = False
if  not llaves:
    print("tienes la llaves")
    
perro = True
gato = True
edad = 18

if perro and (gato or edad > 17): # con los parentesis decimos lo que evalua primero
    print("Puedes adoptar")    