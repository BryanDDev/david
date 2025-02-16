# input siempre sera de tipo String
# x = input("")

# int()
# str()
# float()
# bool()  devuelve false con esto solo "", 0, none.

print(bool(bool("")))  # false
print(bool(bool(0)))  # false
print(bool(bool(None)))  # false
print(bool(bool("falso")))  # true
print(bool(bool(" ")))  # true
