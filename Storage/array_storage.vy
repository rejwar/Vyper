# Storing values in an array
stored_array: public(uint256[5])

@external
def set_value(index: uint256, value: uint256):
    assert index < 5
    self.stored_array[index] = value

@view
@external
def get_value(index: uint256) -> uint256:
    assert index < 5
    return self.stored_array[index]
