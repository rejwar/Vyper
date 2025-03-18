# Multiple storage variables in a contract
owner: public(address)
total_supply: public(uint256)
is_paused: public(bool)

@external
def __init__():
    self.owner = msg.sender
    self.total_supply = 1000
    self.is_paused = False

@external
def set_pause(status: bool):
    assert msg.sender == self.owner
    self.is_paused = status
