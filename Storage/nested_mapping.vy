# Nested mapping storage
balances: public(HashMap[address, HashMap[address, uint256]])

@external
def set_balance(token: address, amount: uint256):
    self.balances[msg.sender][token] = amount

@view
@external
def get_balance(user: address, token: address) -> uint256:
    return self.balances[user][token]
