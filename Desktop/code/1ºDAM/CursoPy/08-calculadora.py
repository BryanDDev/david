
eleccion = input(" Elige una opcion ")
num1 = int(input("Ingrese el primer numero: "))
num2 = int(input("Ingrese el segundo numero: "))
if eleccion == "+":
    print(num1 + num2)
elif eleccion == "-":
    print(num1 - num2)
elif eleccion == "*":
    print(num1 * num2)
elif eleccion == "/":
    print(num1 / num2)
else:
    print("operacion no valida")
