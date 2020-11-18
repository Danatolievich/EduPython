my_list = [5, -6, 7.2, True, 'False', None]
def type_definition(el):
    for el in range(len(my_list)):
        print(type(my_list[el]))
    return
type_definition(my_list)