my_str = input("Введите предложение: ")
my_word = []
num = 1
for b in range(my_str.count(' ') + 1):
    my_word = my_str.split()
    if len(str(my_word)) <= 10:
        print(f" {num} {my_word [b]}")
        num += 1
    else:
        print(f" {num} {my_word [b] [0:10]}")
        num += 1
