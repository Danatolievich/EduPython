# Реализовать функцию, принимающую несколько параметров, описывающих данные пользователя:
# имя, фамилия, год рождения, город проживания, email, телефон. Функция должна принимать
# параметры как именованные аргументы. Реализовать вывод данных о пользователе одной строкой.
surname = input('Введите фамилию: ')
name = input('Введите имя: ')
year = int(input('Введите год рождения: '))
city = input('Введите город проживания: ')
email = input('Введите email: ')
telephone = input('Введите телефон: ')

def my_func(surname, name, year, city, email, telephone):
    return ' '.join([surname, name, year, city, email, telephone])

print(my_func(f"Фамилия = {surname} имя = {name} год рождения = {year} город проживания = {city} email = {email} телефон = {telephone}"))