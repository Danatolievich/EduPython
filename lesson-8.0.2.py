# Создайте собственный класс-исключение, обрабатывающий ситуацию деления на нуль.
# Проверьте его работу на данных, вводимых пользователем. При вводе пользователем нуля
# в качестве делителя программа должна корректно обработать эту ситуацию и не завершиться с ошибкой.

class ClassNull:
    def __init__(self, divider, denominator):
        self.divider = divider
        self.denominator = denominator

    @staticmethod
    def divide_by_null(divider, denominator):
        try:
            return (divider / denominator)
        except:
            return (f"Ошибка, деление на ноль")

m = int(input("Введите первое число: "))
n = int(input("Введите второе число: "))
div = ClassNull(1, 1)

print(f"{div.divide_by_null(m, n)}")

# print(f"{div.divide_by_null(m, n):.1f}") - почему данный вариант не работает?