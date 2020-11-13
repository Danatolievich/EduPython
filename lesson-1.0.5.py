project_profit = int(input("Введите прибыль проекта в тыс. руб.: "))
project_costs = int(input("Введите затраты проекта в тыс. руб.: "))
if project_profit > project_costs:
    print(f"Прибыль превышает затраты, соотношение {project_profit / project_costs:.1f}")
    employees = int(input("Введите численность сотрудников: "))
    print(f"Прибыль фирмы в тыс. руб. в расчете на одного сотрудника {project_profit / employees:.1f}")
elif project_profit == project_costs:
    print(f"Затраты и прибыль равны")
elif project_profit < project_costs:
    print(f"Затраты превышают прибыль, проект убыточный")


