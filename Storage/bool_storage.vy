# Storing boolean values
is_active: public(bool)

@external
def set_active(status: bool):
    self.is_active = status

@view
@external
def get_status() -> bool:
    return self.is_active
