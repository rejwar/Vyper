# Storing values in a mapping
stored_data: public(HashMap[address, uint256])

@external
def set_value(value: uint256):
    self.stored_data[msg.sender] = value

@view
@external
def get_value(addr: address) -> uint256:
    return self.stored_data[addr]
