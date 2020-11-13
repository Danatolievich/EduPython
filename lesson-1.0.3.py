n = int(input("Узнай какая сумма получится для n + nn + nnn, если n = "))
total = (n + int(str(n) + (str(n))) + int(str(n) + str(n) + str(n)))
print(f"Сумма чисел n + nn + nnn = {total}")