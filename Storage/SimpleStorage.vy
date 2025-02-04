# SimpleStorage.vy

# @dev: Simple storage contract example in Vyper
storedData: public(int128)

@public
def __init__(_initialValue: int128):
    self.storedData = _initialValue

@public
def set(_x: int128):
    self.storedData = _x

@public
def get() -> int128:
    return self.storedData
