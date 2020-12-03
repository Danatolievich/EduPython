# Реализовать класс Road (дорога), в котором определить атрибуты: length (длина),
# width (ширина). Значения данных атрибутов должны передаваться при создании экземпляра
# класса. Атрибуты сделать защищенными. Определить метод расчета массы асфальта, необходимого
# для покрытия всего дорожного полотна. Использовать формулу: длина * ширина * масса асфальта
# для покрытия одного кв метра дороги асфальтом, толщиной в 1 см * чи сло см толщины полотна.
# Проверить работу метода.
# Например: 20м * 5000м * 25кг * 5см = 12500 т

class Road:
    def __init__(self, _length, _width):
        self._length = _length
        self._width = _width

class MassCount(Road):
    def __init__(self, _length, _width, volume, thickness):
        super().__init__(_length, _width)
        self.volume = volume
        self.thickness = thickness

    def mass(self):
        return (self._length * self._width * self.volume * self.thickness)/1000

# MassCount (в тоннах) = (длина (в метрах), ширина (в метрах), вес (в кг), толшина полотна (в см))/1000
#
r = MassCount(5000, 20, 25, 5)
print(f"Необходимо {r.mass():.0f} т асфальта для покрытия дорожного полотна")