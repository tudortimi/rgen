def get_register_class(register):
    return register.name.lower() + "_reg"

def get_register_inst(register):
    return register.name


def get_field_inst(field):
    return field.name
