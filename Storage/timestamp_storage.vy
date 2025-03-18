# Storing timestamps
last_updated: public(uint256)

@external
def update_time():
    self.last_updated = block.timestamp

@view
@external
def get_last_updated() -> uint256:
    return self.last_updated
