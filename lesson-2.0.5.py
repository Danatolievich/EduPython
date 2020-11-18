my_list = [7, 5, 3, 3, 2]
print(f"Рейтинг - {my_list}")
digit = int(input("Введите число от 1 до 10 (для выхода нажмите 0): "))
while digit != 0:
    for b in range(len(my_list)):
        if my_list[b] == digit:
            my_list.insert(b + 1, digit)
            break
        elif my_list[0] < digit:
            my_list.insert(0, digit)
        elif my_list[-1] > digit:
            my_list.append(digit)
        elif my_list[b] > digit and my_list[b + 1] < digit:
            my_list.insert(b + 1, digit)
    print(f"Текущий рейтинг - {my_list}")
    digit = int(input("Введите число от 1 до 10 (для выхода нажмите 0): "))