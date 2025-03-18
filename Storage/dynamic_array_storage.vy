# Using dynamic arrays for storage
stored_list: DynArray[uint256, 10]

@external
def add_value(value: uint256):
    assert len(self.stored_list) < 10
    self.stored_list.append(value)

@view
@external
def get_values() -> DynArray[uint256, 10]:
    return self.stored_list
