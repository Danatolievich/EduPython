# Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты:
# speed, color, name, is_police (булево). А также методы: go, stop, turn(direction),
# которые должны сообщать, что машина поехала, остановилась, повернула (куда). Опишите
# несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar. Добавьте в базовый
# класс метод show_speed, который должен показывать текущую скорость автомобиля. Для классов
# TownCar и WorkCar переопределите метод show_speed. При значении скорости свыше 60 (TownCar)
# и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
# Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам,
# выведите результат. Выполните вызов методов и также покажите результат.

class Car:
    def __init__(self, speed, colour, name, is_police):
        self.speed = speed
        self.colour = colour
        self.name = name
        self.is_police = is_police

    def go(self):
        return f'{self.name} тронулась с места'

    def stop(self):
        return f'{self.name} остановилась'

    def turn_right(self):
        return f'{self.name} повернула направо'

    def turn_left(self):
        return f'{self.name} повернула налево'

    def show_speed(self):
        return f'Текущая скорость {self.name} составляет {self.speed}'


class TownCar(Car):
    def __init__(self, speed, colour, name, is_police):
        super().__init__(speed, colour, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость TownCar {self.name} составляет {self.speed}')

        if self.speed > 40:
            return f'{self.name} превышает допустимую скорость. Снизьте скорость!'
        else:
            return f'{self.name} ниже допустимой скорости. Прибавьте скорость, вас уже обгоняют велосипедисты!'

class SportCar(Car):
    def __init__(self, speed, colour, name, is_police):
        super().__init__(speed, colour, name, is_police)


class WorkCar(Car):
    def __init__(self, speed, colour, name, is_police):
        super().__init__(speed, colour, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость WorkCar {self.name} составляет {self.speed}')

        if self.speed > 60:
            return f'{self.name} превышает допустимую скорость. Снизьте скорость!'


class PoliceCar(Car):
    def __init__(self, speed, colour, name, is_police):
        super().__init__(speed, colour, name, is_police)

    def police(self):
        if self.is_police:
            return f'{self.name} из полиции'
        else:
            return f'{self.name} не из полиции'


audi = SportCar(100, 'Красная', 'Audi', False)
toyota = TownCar(42, 'Синий', 'Toyota', False)
volvo = WorkCar(110, 'Белый', 'Volvo', False)
lexus = PoliceCar(120, 'Черный', 'Lexus', True)
print(f'{audi.stop()} когда {volvo.turn_left()},')
print(f'{audi.go()}. {audi.show_speed()}')
print(f'{audi.name} имеет {audi.colour} цвет')
print(f'{audi.name} полицейская машина? {audi.is_police}')
print(f'{volvo.name}  полицейская машина? {volvo.is_police}')
print(audi.show_speed())
print(volvo.show_speed())
print(lexus.police())
print(lexus.show_speed())
