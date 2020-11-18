list_count = int(input("Задайте количество элементов списка "))
my_list = []
i = 0
b = 0
while i < list_count:
    my_list.append(input("Задайте следующее значение списка "))
    i += 1
for d in range(int(len(my_list)/2)):
        my_list[b], my_list[b + 1] = my_list [b + 1], my_list[b]
        b += 2
print(my_list)