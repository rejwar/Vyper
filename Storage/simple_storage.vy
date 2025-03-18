# A simple contract with a single stored variable
@external
def __init__():
    self.value: uint256 = 0

@external
def set_value(new_value: uint256):
    self.value = new_value

@view
@external
def get_value() -> uint256:
    return self.value
